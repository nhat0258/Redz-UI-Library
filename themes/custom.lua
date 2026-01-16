local Theme = {}

Theme.Name = "CustomTheme"

Theme.Colors = {
    Background = Color3.fromRGB(18, 18, 18),
    WindowBackground = Color3.fromRGB(22, 22, 22),
    TopBar = Color3.fromRGB(25, 25, 25),

    Primary = Color3.fromRGB(255, 60, 60),
    Secondary = Color3.fromRGB(200, 200, 200),

    Text = Color3.fromRGB(235, 235, 235),
    SubText = Color3.fromRGB(160, 160, 160),

    Accent = Color3.fromRGB(255, 80, 80),
    Border = Color3.fromRGB(35, 35, 35)
}

Theme.Sizes = {
    WindowRadius = 10,
    ButtonRadius = 8,
    ToggleRadius = 8,
    SliderRadius = 8
}

Theme.Fonts = {
    Main = Enum.Font.Gotham,
    Bold = Enum.Font.GothamBold,
    Mono = Enum.Font.Code
}

Theme.Animation = {
    TweenTime = 0.25,
    EasingStyle = Enum.EasingStyle.Quad,
    EasingDirection = Enum.EasingDirection.Out
}

return Theme
