-導入“js”模組
本地 js =  需要 “ js ”
-全球就是javascript的窗口
本地全球= js。全球
本地文件=全球。文件
- html檔案中canvas id設為“canvas”
-準備繪圖畫布
本地畫布=文檔：getElementById（“畫布”）
-將ctx設為canvas 2d繪圖畫布變數
local ctx = canvas：getContext（“ 2d ”）

-以下採用畫布原始座標繪圖
flag_w =  600
flag_h =  300
circle_x = flag_w / 4
circle_y = flag_h / 4

-先畫滿地紅
CTX。fillStyle = ' rgb（255，0，0）'
CTX：fillRect（0，0，flag_w，標記_h）

-再畫青天
CTX。fillStyle = ' rgb（0，0，150 ）'
CTX：fillRect（0，0，flag_w * 2 / 5，標記_h * 7 / 13）
-畫白第一條線
CTX。fillStyle = ' rgb（999，999，999 ）'
CTX：fillRect（240，22，flag_w，標記_h / 13）
-畫白第二條線
CTX。fillStyle = ' rgb（999，999，999 ）'
CTX：fillRect（240，66，flag_w，標記_h / 13）
-畫白第三條線
CTX。fillStyle = ' rgb（999，999，999 ）'
CTX：fillRect（240，110，flag_w，標記_h / 13）
-畫白第四條線
CTX。fillStyle = ' rgb（999，999，999 ）'
CTX：fillRect（0，160，flag_w，標記_h / 13）
-畫白第五條線
CTX。fillStyle = ' rgb（999，999，999 ）'
CTX：fillRect（0，210，flag_w，標記_h / 13）
-畫白第六條線
CTX。fillStyle = ' rgb（999，999，999 ）'
CTX：fillRect（0，255，flag_w，標記_h / 13）
-準備在canvas中繪圖
函數draw_line（x1，y1，x2，y2，color）
顏色=顏色或 “ #fff ”
ctx：beginPath（）
ctx：moveTo（x1，y1）
ctx：lineTo（x2，y2）
CTX。strokeStyle  =顏色
ctx：stroke（）
結束

- x，y為中心，r為半徑，angle旋轉角，solid空心或​​實心，顏色顏色
函數星（x，y，r，角度，實體，顏色）
angle =角度或 0
固體=固體或 假
顏色=顏色或 “＃f00 ”
-以x，y為圓心，計算五個外點
當地 deg =  math.pi / 180
-圓心到水平線距離
當地 a = r * math.cos（72 * deg）
-頂點向右到內點距離
局部 b =（r * math.cos（72 * deg）/ math.cos（36 * deg））* math.sin（36 * deg）
-利用畢氏定理求內點半徑
rin =  math.sqrt（a * a + b * b）
-查驗a，b與rin
-打印（a，b，rin）
如果（堅實）那麼
ctx：beginPath（）
結束
對於我=  0，4  做
XOUT =（X + - [R * math.sin（（360 / 5）*度*我+角*度））
YOUT =（Y + - [R * math.cos（（360 / 5）*度*我+角*度））
-外點增量+ 1
xout2 = X + - [R * math.sin（（360 / 5）*度*（I + 1）+角度* deg）的
yout2 = ÿ + - [R * math.cos（（360 / 5）*度*（I + 1）+角度* deg）的
鑫= X + RIN * math.sin（（360 / 5）*度*我+ 36 *度+角度* deg）的
陰= ÿ + RIN * math.cos（（360 / 5）*度*我+ 36 *度+角度* deg）的
-查驗外點與內點座標
-打印（xout，yout，xin，yin）
如果（堅實）那麼
-填色
如果（我= 0）然後
ctx：moveTo（xout，yout）
ctx：lineTo（xin，yin）
ctx：lineTo（xout2，yout2）
其他
ctx：lineTo（xin，yin）
ctx：lineTo（xout2，yout2）
結束
其他
-空心
draw_line（xout，yout，xin，yin，color）
-畫空心五芒星，無關畫線次序，若實心則與畫線次序有關
draw_line（xout2，yout2，xin，yin，color）
結束
結束

如果（堅實）那麼
CTX。fillStyle  =顏色
ctx：fill（）
結束
結束

-星號（300，300，50，0，假，“＃000”）
對於我=  0，5  做
為 Ĵ =  0，4  做
星（13 + 42 * I，11 + 35 * Ĵ，9，35，真，“ #FFF ”）
結束
結束

對於我=  0，4  做
為 Ĵ =  0，3  做
星（33 + 42 * I，28 + 35 * Ĵ，9，35，真，“ #FFF ”）
結束
結束
