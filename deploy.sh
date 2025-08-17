#!/bin/bash

# Lab3142 Website Deployment Script
# This script helps you deploy your website to various hosting platforms

echo "🚀 Lab3142 Website Deployment Helper"
echo "=================================="

# Check if files exist
if [ ! -f "index.html" ] || [ ! -f "styles.css" ] || [ ! -f "script.js" ]; then
    echo "❌ Error: Required files (index.html, styles.css, script.js) not found!"
    echo "Please run this script from the website directory."
    exit 1
fi

echo "✅ Website files found!"
echo ""

# Show deployment options
echo "Choose your hosting platform:"
echo "1) GitHub Pages"
echo "2) Netlify (Drag & Drop)"
echo "3) Vercel"
echo "4) Traditional Web Hosting (FTP)"
echo "5) Local Testing"
echo ""

read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        echo "📚 GitHub Pages Setup:"
        echo "1. Create a new repository on GitHub"
        echo "2. Initialize git in this directory:"
        echo "   git init"
        echo "   git add ."
        echo "   git commit -m 'Initial commit'"
        echo "3. Add your remote repository:"
        echo "   git remote add origin https://github.com/yourusername/your-repo.git"
        echo "4. Push to GitHub:"
        echo "   git push -u origin main"
        echo "5. Go to Settings > Pages in your repository"
        echo "6. Select source branch and configure custom domain"
        ;;
    2)
        echo "🌐 Netlify Setup:"
        echo "1. Go to https://netlify.com"
        echo "2. Sign up or log in"
        echo "3. Drag and drop this entire folder to the deploy area"
        echo "4. Your site will be live instantly!"
        echo "5. Configure custom domain in site settings"
        echo "6. Update DNS records to point to Netlify"
        ;;
    3)
        echo "⚡ Vercel Setup:"
        echo "1. Go to https://vercel.com"
        echo "2. Sign up with GitHub"
        echo "3. Import your repository"
        echo "4. Deploy automatically"
        echo "5. Configure custom domain in project settings"
        ;;
    4)
        echo "🖥️  Traditional Hosting Setup:"
        echo "1. Get hosting credentials from your provider"
        echo "2. Use an FTP client (FileZilla, WinSCP, etc.)"
        echo "3. Upload all files to public_html or www folder"
        echo "4. Configure domain DNS to point to your hosting"
        echo "5. Enable SSL certificate"
        ;;
    5)
        echo "🔧 Local Testing:"
        echo "Starting local server..."
        if command -v python3 &> /dev/null; then
            echo "Using Python 3 server..."
            python3 -m http.server 8000
        elif command -v python &> /dev/null; then
            echo "Using Python server..."
            python -m SimpleHTTPServer 8000
        elif command -v php &> /dev/null; then
            echo "Using PHP server..."
            php -S localhost:8000
        else
            echo "❌ No suitable server found. Install Python or PHP."
            echo "Or open index.html directly in your browser."
        fi
        ;;
    *)
        echo "❌ Invalid choice. Please run the script again."
        exit 1
        ;;
esac

echo ""
echo "📋 Next Steps:"
echo "1. Configure your domain DNS settings"
echo "2. Set up SSL certificate"
echo "3. Test your website"
echo "4. Set up email hosting"
echo "5. Add analytics (Google Analytics)"
echo ""
echo "📖 For detailed instructions, see README.md"
echo ""
echo "🎉 Good luck with your website launch!"
