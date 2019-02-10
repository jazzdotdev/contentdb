function contentdb.scan_stores ()
  -- Add all directories in contentdb to the stores table
  for entry in fs.entries(db_path) do
    if fs.metadata(db_path .. entry).type == "directory" then
      contentdb.stores[entry] = db_path .. entry .. "/"
    end
  end
end