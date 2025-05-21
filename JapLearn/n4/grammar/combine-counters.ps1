$outputFile = "D:\JunCode\Belajar\JapLearn\n4\grammar\counters.html"
$part1File = "D:\JunCode\Belajar\JapLearn\n4\grammar\counters-part1.html"
$part2File = "D:\JunCode\Belajar\JapLearn\n4\grammar\counters-part2.html"
$part3File = "D:\JunCode\Belajar\JapLearn\n4\grammar\counters-part3.html"
$part4File = "D:\JunCode\Belajar\JapLearn\n4\grammar\counters-part4.html"

# Create HTML structure
$htmlStart = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kata Bantu Bilangan (Counters) dalam Bahasa Jepang - N4 Grammar | JapLearn</title>
    <meta name="description" content="Pelajari tentang kata bantu bilangan (counters) dalam bahasa Jepang, termasuk penggunaan dan contoh untuk berbagai jenis benda.">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <style>
        .japanese {
            font-family: "Hiragino Kaku Gothic Pro", "ヒラギノ角ゴ Pro W3", Meiryo, "メイリオ", Osaka, "MS PGothic", "ＭＳ Ｐゴシック", sans-serif;
        }
        .example-card {
            @apply bg-white p-4 rounded-md shadow-sm border border-gray-200;
        }
        .grammar-card {
            @apply bg-white p-6 rounded-lg shadow-sm border border-gray-200;
        }
        .exercise-card {
            @apply bg-white p-6 rounded-lg shadow-sm border border-gray-200;
        }
        .mistake-card {
            @apply bg-white p-6 rounded-lg shadow-sm border border-gray-200;
        }
        .btn-primary {
            @apply bg-indigo-600 hover:bg-indigo-700 text-white font-medium py-2 px-4 rounded-md transition-colors;
        }
        .comparison-table {
            @apply min-w-full divide-y divide-gray-200;
        }
        .comparison-table th {
            @apply px-4 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider;
        }
        .comparison-table td {
            @apply px-4 py-3 whitespace-normal;
        }
        .comparison-table tr {
            @apply bg-white;
        }
        .comparison-table tr:nth-child(even) {
            @apply bg-gray-50;
        }
        .list-circle {
            list-style-type: circle;
        }
    </style>
</head>
<body class="bg-gray-100 font-sans">
    <header class="bg-indigo-700 text-white py-6">
        <div class="container mx-auto px-4">
            <h1 class="text-3xl font-bold">Kata Bantu Bilangan (Counters) dalam Bahasa Jepang</h1>
            <p class="mt-2">N4 Grammar Point</p>
            
            <nav class="mt-4">
                <ul class="flex space-x-4">
                    <li><a href="../../index.html" class="hover:underline">Home</a></li>
                    <li><a href="../index.html" class="hover:underline">N4 Level</a></li>
                    <li><a href="../grammar.html" class="hover:underline">Grammar List</a></li>
                </ul>
            </nav>
        </div>
    </header>
    
    <main class="container mx-auto px-4 py-8">
        <div class="max-w-4xl mx-auto">
"@

$htmlEnd = @"
        </div>
    </main>
    
    <footer class="bg-gray-800 text-white py-8">
        <div class="container mx-auto px-4">
            <div class="flex flex-col md:flex-row justify-between">
                <div class="mb-6 md:mb-0">
                    <h3 class="text-xl font-bold mb-4">JapLearn</h3>
                    <p class="text-gray-400">Your resource for learning Japanese language and culture.</p>
                </div>
                
                <div>
                    <h4 class="text-lg font-semibold mb-3">Quick Links</h4>
                    <ul class="space-y-2">
                        <li><a href="../../index.html" class="text-gray-400 hover:text-white">Home</a></li>
                        <li><a href="../index.html" class="text-gray-400 hover:text-white">N4 Level</a></li>
                        <li><a href="../grammar.html" class="text-gray-400 hover:text-white">Grammar List</a></li>
                        <li><a href="../vocabulary.html" class="text-gray-400 hover:text-white">Vocabulary</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="mt-8 pt-8 border-t border-gray-700 text-gray-400 text-sm text-center">
                <p>&copy; 2025 JapLearn. All rights reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>
"@

# Read content from part files
$part1Content = ""
$part2Content = ""
$part3Content = ""
$part4Content = ""

if (Test-Path $part1File) {
    $part1Content = Get-Content -Path $part1File -Raw
}

if (Test-Path $part2File) {
    $part2Content = Get-Content -Path $part2File -Raw
}

if (Test-Path $part3File) {
    $part3Content = Get-Content -Path $part3File -Raw
}

if (Test-Path $part4File) {
    $part4Content = Get-Content -Path $part4File -Raw
}

# Combine all content
$fullContent = $htmlStart + $part1Content + $part2Content + $part3Content + $part4Content + $htmlEnd

# Write to output file
$fullContent | Out-File -FilePath $outputFile -Encoding utf8

Write-Host "Combined all counters parts into $outputFile"
