#!/usr/local/bin/lua

---------------------------------------------------------------------
--
-- making a visual diff of two pdfs
--
---------------------------------------------------------------------
function visual_div(old, new)

    -- stripping file ending from name
    doc_old = old:match("(.+).pdf") or old
    doc_new = new:match("(.+).pdf") or new

    -- getting number of pages in each document ---------------------
    local handle = io.popen("pdfinfo " .. doc_old .. ".pdf | grep Pages | awk '{print $2}'")
    local pages_old = handle:read("*a")
    handle:close()
    
    local handle = io.popen("pdfinfo " .. doc_new .. ".pdf | grep Pages | awk '{print $2}'")
    local pages_new = handle:read("*a")
    handle:close()

    ---- converting pdf's into png images ---------------------------
    os.execute("convert -density 300 " .. doc_old .. ".pdf " .. doc_old .. ".png")
    os.execute("convert -density 300 " .. doc_new .. ".pdf " .. doc_new .. ".png")

    -- loop over pages ----------------------------------------------
    for i = 0, pages_new-1, 1 
    do 

        -- check if page exists in old document ---------------------
        if( pages_old+0.0 >= i)
        then

            -- suffix based on number of pages ----------------------
            if( pages_old+0.0 == 1.0 )
            then 
                suffix = ""
            else
                suffix = "-" .. i
            end -- check if only one page

            -- calculating diff -------------------------------------
            os.execute("compare -compose src " .. doc_old .. suffix .. ".png " .. doc_new .. suffix .. ".png diff" .. suffix .. ".png")
            
            -- getting number of changed pixels ---------------------
            local handle = io.popen("convert diff" .. suffix .. ".png -print '%[fx:w*h*(1-mean)]'   null:")
            local diff_pixel = handle:read("*a")
            handle:close()
                
            -- clean up ---------------------------------------------
            os.execute("rm " .. doc_new .. suffix .. ".png")
            os.execute("rm " .. doc_old .. suffix .. ".png")
            
            -- keeping only images with differences -----------------
            if(diff_pixel+0.0 > 0.0)
            then
                -- print(diff_pixel)
            else
                os.execute("rm diff" .. suffix .. ".png")
            end

        end -- check if page exist

    end -- loop over pages

end -- end function

---------------------------------------------------------------------
--
-- calling function
--
---------------------------------------------------------------------

-- e.g. lua pdfdiv.lua "document_old" "document_new"
visual_div(arg[1], arg[2])

