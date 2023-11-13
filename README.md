![Logo](https://github.com/serdukow/BatteryCare/blob/7f06fce998bcd988f06bd09ea5d6173a801bb080/badge.png)

# Battery Care
Battery Notifications, Status, Health, Cycle Count and more...

![UI-1](https://github.com/serdukow/BatteryCare/blob/8671f6039dd53fc5b8560f92b82a1e3407256dab/UI-1.png)

![UI-2](https://github.com/serdukow/BatteryCare/blob/8671f6039dd53fc5b8560f92b82a1e3407256dab/UI-2.png)

![UI-3](https://github.com/serdukow/BatteryCare/blob/8671f6039dd53fc5b8560f92b82a1e3407256dab/UI-3.png)


# What it is and what it's for?

The original name of this application is [Apple Juice by Raphael Hanneken](https://github.com/raphaelhanneken/apple-juice). 

Initially, I spent a long time searching for a Mac OS application that would send me notifications about low battery levels and charging up to 80 percent or allow me to use custom values. I found many applications ranging from popular ones like Energiza and AlDente to less popular ones that I can't even remember. However, each of them had its drawbacks, personally for me.

I was looking for an application that would be identical to the standard Apple battery app but with notifications and useful information. Eventually, I started writing this application myself. Since I mostly code in Python, I struggled day by day to understand how everything works until I came across Apple Juice. I was thrilled because it was exactly what I needed in terms of style, but I wanted to add my vision and much more.

# Improvements that I Made

- Notifications (personally, they didn't work for me at all, or they only triggered when the battery was disconnected from the charger. In other words, I received notifications at 20 and 22 percent, but at 80 percent, I only received them when the Mac charger reached 80, and then I had to disconnect the charger for it to appear. However, when the Mac was connected to the power outlet, the notification did not come).
- I also found notifications at 20, 22, and 80 percent to be critically important, so I added them and removed the extras.
- Application window (I removed information that was unimportant to me and added only what was important to me, namely Power Source, Time Remaining, Battery Temperature, Battery Condition, Cycle Count).
- Added Russian and German localization, which also did not work for me.
- Some deprecated Swift methods were changed.

# Appendix
In general, I tried my best to make the application look as much like the standard one as possible, but with the addition of useful information and notifications.

Huge thanks to [Raphael Hanneken](https://github.com/raphaelhanneken/apple-juice) for providing the opportunity to understand how to implement such an application, for creating something that I searched for a very long time, and for the open source code.

I don't know if there are any restrictions on such code modifications and its publication, so if there are any license claims, please write to serdukow1@gmail.com.

I did it personally for myself, but perhaps someone else will like what I have implemented, so I decided to make the code publicly available, and [Raphael Hanneken's](https://github.com/raphaelhanneken/apple-juice) code has not been supported for 3 years and may not be supported anymore.

# Plans
- Localizations (if someone is willing to help, welcome).
- I want to add a charge limit of 80%. I found an interesting CLI for limiting, but I couldn't implement it into my code. If someone can help with this, again, welcome. Or maybe write it from scratch, but I have no idea how to do it, and the battery works perfectly and weighs very little.

# Localizations
![Static Badge](https://img.shields.io/badge/verified-brightgreen?label=English)
![Static Badge](https://img.shields.io/badge/verified-brightgreen?label=Russian)
![Static Badge](https://img.shields.io/badge/need%20review-yellow?label=German)




## Installation

Just download latest `.dmg`
 package and the \
  `Drug % Drop` it to Application folder.\
Make sure you have enabled 'Launch At Login' in Preferences and turned on charge status notifications.
    
## License

The MIT License (MIT)

Copyright (c) 2015 - 2020 Raphael Hanneken

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


The MIT License (MIT)

Copyright (c) 2023 Andrei Serdiukov

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

