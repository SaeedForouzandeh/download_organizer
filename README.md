# 🗂️ Download Organizer | مرتب‌سازی دانلودها 🗂️

![Windows](https://img.shields.io/badge/Windows-Batch-blue) ![License](https://img.shields.io/badge/License-MIT-green) ![GitHub stars](https://img.shields.io/github/stars/YourUsername/Download-Organizer)

✨ یه اسکریپت ساده و کاربردی برای مرتب کردن خودکار فایل‌های پوشه دانلودها تو ویندوز! عکس‌ها، ویدیوها، اسناد، فایل‌های فشرده و برنامه‌ها رو تو یه چشم به هم زدن مرتب کن! 🚀  
✨ A simple and handy batch script to automatically organize files in your Windows Downloads folder! Sort images, videos, documents, compressed files, and programs in a snap! 🚀

---

## 📖 چطور کار می‌کنه؟ | How It Works?

این اسکریپت فایل‌های پوشه Downloads رو بر اساس نوع فایل (مثل jpg، mp4، pdf، zip، exe) به پوشه‌های جداگونه منتقل می‌کنه. یه منوی ساده هم داره که بهت اجازه می‌ده انتخاب کنی چیو مرتب کنی! 🛠️  
This script organizes files in the Downloads folder by type (e.g., jpg, mp4, pdf, zip, exe) into separate folders. It includes a simple menu to let you choose what to sort! 🛠️

---

### 📜 توضیح خط به خط | Line-by-Line Explanation

| خط | Line | توضیح فارسی | English Description |
|-------|-------|----------------------|---------------------|
| `@echo off` | `@echo off` | 🧹 دستورات رو مخفی می‌کنه تا خروجی تمیز باشه. | 🧹 Hides commands for a clean output. |
| `title Download Organizer` | `title Download Organizer` | 📌 عنوان پنجره CMD رو به "Download Organizer" تنظیم می‌کنه. | 📌 Sets the CMD window title to "Download Organizer". |
| `color 0a` | `color 0a` | 🎨 رنگ پس‌زمینه مشکی و متن سبز برای حس هکری! | 🎨 Black background, green text for a hacker vibe! |
| `echo 🌟 Download Organizer Menu 🌟` | `echo 🌟 Download Organizer Menu 🌟` | 📢 منوی انتخاب رو با عنوان "Download Organizer Menu" نمایش می‌ده. | 📢 Displays the selection menu with the title "Download Organizer Menu". |
| `set DOWNLOADS=%USERPROFILE%\Downloads` | `set DOWNLOADS=%USERPROFILE%\Downloads` | 📂 مسیر پوشه Downloads رو مشخص می‌کنه (معمولاً تو مسیر کاربر ویندوز). | 📂 Sets the Downloads folder path (typically in the user's Windows directory). |
| `mkdir %IMAGES% %VIDEOS% %DOCS% %COMPRESSED% %PROGRAMS%` | `mkdir %IMAGES% %VIDEOS% %DOCS% %COMPRESSED% %PROGRAMadaptation of the script. |
| `move %DOWNLOADS%\*.zip %COMPRESSED%\` | `move %DOWNLOADS%\*.zip %COMPRESSED%\` | 📦 فایل‌های zip و rar رو به پوشه Compressed منتقل می‌کنه. | 📦 Moves zip and rar files to the Compressed folder. |
| `move %DOWNLOADS%\*.exe %PROGRAMS%\` | `move %DOWNLOADS%\*.exe %PROGRAMS%\` | 💻 فایل‌های exe رو به پوشه Programs منتقل می‌کنه. | 💻 Moves exe files to the Programs folder. |
| `echo [%date% %time%] Sorting completed!` | `echo [%date% %time%] Sorting completed!` | 📝 نتایج رو با تاریخ و زمان تو فایل لاگ ذخیره می‌کنه. | 📝 Logs results with date and time in a file. |
| `pause` | `pause` | ⏸ پنجره رو باز نگه می‌داره تا خروجی رو ببینی و بعد از زدن یه کلید به منو برگرده. | ⏸ Keeps the window open to view output and returns to the menu after pressing a key. |

---

## 🚀 چطور استفاده کنم؟ | How to Use It?

1. **دانلود اسکریپت** | **Download the Script**  
   فایل `download_organizer.bat` رو از این مخزن دانلود کن.  
   Download the `download_organizer.bat` file from this repository.

2. **اجرا با دسترسی ادمین** | **Run as Administrator**  
   روی فایل راست‌کلیک کن و "Run as administrator" رو بزن (برای اطمینان از دسترسی کامل). ⚡  
   Right-click the file and select "Run as administrator" (to ensure full permissions). ⚡

3. **انتخاب و اجرا** | **Choose and Run**  
   از منو گزینه مورد نظرت (1-7) رو انتخاب کن و منتظر باش تا فایل‌ها مرتب بشن! نتایج تو فایل `receipts.txt` ذخیره می‌شه.  
   Select an option (1-7) from the menu and watch your files get organized! Results are saved in `receipts.txt`.

---

## ⚠️ نکات مهم | Important Notes

- 🛡️ اگه فایل‌ها منتقل نشدن، مطمئن شو اسکریپت رو با دسترسی ادمین اجرا کردی.  
  🛡️ If files don’t move, ensure you ran the script as administrator.  
- 📂 مسیرهای پیش‌فرض برای پوشه Downloads ویندوزه. اگه مسیرت فرق داره، اسکریپت رو ویرایش کن.  
  📂 Paths are set for the default Downloads folder. Edit the script if your path differs.  
- 📝 مشکلات رو تو بخش Issues گیت‌هاب گزارش بده!  
  📝 Report issues in the GitHub Issues section!

---

## 🙌 مشارکت | Contributing

ایده یا پیشنهادی داری؟ یه Pull Request بزن یا تو Issues بگو! 😊  
Got ideas or suggestions? Submit a Pull Request or share in Issues! 😊

---

## 📜 مجوز | License

این پروژه تحت مجوز MIT منتشر شده. آزادانه استفاده کن و به اشتراک بذار!  
This project is licensed under the MIT License. Use and share freely!

---

## 👨‍💻 ساخته شده توسط | Made by

🌟 با ❤️ توسط **سعید فروزنده** ساخته شده  
🌟 Made with ❤️ by **Saeed Forouzandeh**

---

🌟 اگه این اسکریپت بهت کمک کرد، یه ستاره تو گیت‌هاب بده!  
🌟 If this script helped you, give it a star on GitHub!
