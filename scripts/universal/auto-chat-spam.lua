-- script desc:   auto spam i made in like 2 mins

RepStorage = game:GetService("ReplicatedStorage")
DefaultChat = RepStorage:FindFirstChild("DefaultChatSystemChatEvents")
SayMsgRequest = DefaultChat:FindFirstChild("SayMessageRequest")

String = 'd11voqii w ' -- put what ever you want here. -d11voqii 
Duration = 0.1 -- spam speed -d11voqii

while wait(Duration) do
    if DefaultChat and SayMsgRequest then
        SayMsgRequest:FireServer(String, "all")
    end
end
