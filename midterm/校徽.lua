-導入“js”模組
本地 js =  需要 “ js ”
-全球就是javascript的窗口
本地全球= js。全球
本地文件=全球。文件
- html檔案中canvas id設為“canvas”
本地畫布=文檔：getElementById（“畫布”）
-將ctx設為canvas 2d繪圖畫布變數
local ctx = canvas：getContext（“ 2d ”）

-乘上deg可轉為徑度單位
deg =  math.pi  /  180

-建立多邊形定點位置畫線函式
函數星（半徑，xc，yc，n，fs，ss，fors，aa）
半徑=半徑或 50
xc = xc 或 100
yc = yc 或 100
n = n 或 5
-屬性呼叫使用。而方法呼叫使用：
-填色屬性
fs = fs 或 “ rgb（200,0,0）”
-畫筆顏色屬性
ss = ss 或 “ rgb（0,0,200）”
-內定為填色
fors = fors 或 “ fill ”
aa = aa 或 0
CTX。fillStyle  = fs
CTX。strokeStyle  = ss
xi = xc + radius * math.cos（（360 / n）* deg +（90 + aa）* deg）
yi = yc - radius * math.sin（（360 / n）* deg +（90 + aa）* deg）
ctx：beginPath（）
ctx：moveTo（xi，yi）
對於 i =  2，n + 1  做
（（360 / n）* deg * i +（90 + aa）* deg）x = xc + radius * math.cos
y = yc - radius * math.sin（（360 / n）* deg * i +（90 + aa）* deg）
ctx：lineTo（x，y）
結束
ctx：closePath（）
如果 fors ==  “填充” 那麼
ctx：fill（）
其他
ctx：stroke（）
結束
結束

-畫圓及圓內白線
星（200，300，300，6，“ RGB（0,77,153） ” ，“ RGB（100,100,0） ” ，“ 填充”，- 90）
星（130，300，300，6，“ RGB（255,255,255） ” ，“ RGB（100,100,0） ” ，“ 填充”，- 90）
星（210，300，60，4，“ RGB（255,255,255） ” ，“ RGB（100,100,0） ” ，“ 填充”，45）
星（60，300，300，36，“ RGB（0,77,153） ” ，“ RGB（100,100,0） ” ，“ 填充”，45）
星（20，270，260，4，“ RGB（255,255,255） ” ，“ RGB（100,100,0） ” ，“ 填充”，85）
星（20，288，281，4，“ RGB（255,255,255） ” ，“ RGB（100,100,0） ” ，“ 填充”，85）
星（20，304，300，4，“ RGB（999,999,999） ” ，“ RGB（100,100,0） ” ，“ 填充”，85）
星（20，319，318，4，“ RGB（255,255,255） ” ，“ RGB（100,100,0） ” ，“ 填充”，85）
星（20，334，336，4，“ RGB（255,255,255） ” ，“ RGB（100,100,0） ” ，“ 填充”，85）
