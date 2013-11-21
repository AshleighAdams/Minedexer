
local template = {}

template.generate = function(res, title, content)
	tags.html 
	{
		tags.head
		{
			tags.title { tostring(title) },
			tags.link { type="text/css", rel="stylesheet", href="/minedexer/style.css" }
		},
		tags.body
		{
			tags.div { class = "wrapper" }
			{
				tags.div { class = "content" }
				{
					unpack(content)
				}
			}
		}
	}.to_response(res)
end


return template