import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const Home(),
        '/product': (BuildContext context) => const Product(),
        '/profil': (BuildContext context) => const Profil(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      drawer: buildDrawer(context), // Menautkan drawer
      body: const Center(
        child: Text('Ini adalah halaman Home'),
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Page'),
      ),
      drawer: buildDrawer(context), // Menautkan drawer
      body: const Center(
        child: Text('Ini adalah halaman Product'),
      ),
    );
  }
}

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      drawer: buildDrawer(context), // Menautkan drawer
      body: const Center(
        child: Text('Ini adalah halaman Profile'),
      ),
    );
  }
}

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFhUWFxkYGRgXFxkWGhgaGR0XGBgdGBgYHSggGBolGxgYITEhJSkrLi4uHh8zODMtNygtLisBCgoKDg0OGxAQGy0lHyUtLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALEBHQMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAwQFBgcCAQj/xABHEAACAQIEAwYEAwUFBgQHAAABAhEAAwQSITEFQVEGEyJhcYEHMpGhscHwFEJSctEjNGKC4RUzc5Ky8RZjovIXJDVDU7PC/8QAGAEAAwEBAAAAAAAAAAAAAAAAAAECAwT/xAApEQACAgEEAQQCAQUAAAAAAAAAAQIRIQMSMUEiBBNRYTJx0RQjQqHB/9oADAMBAAIRAxEAPwDXLPEQdCDm6Hfy+tL3L1RuKYAyAJpK1iJmDz51DZ1KCeTnvhbxFzSDdVSp6sIT7aH386nqgOIYA3hb3BDGCI0MEz9p9QKn2YRpQiZ8nNx6ROmnP9b0ncbWeVdWQSJO/wCoqlLBD07eeAu3DEASfTT3pDCX0cuACCpI1jxQxViIP8Ska6/WnmLdbVtnI0VSxHMxrA8zWcdjr7rxJgzFhdW4GPIMYuyOUSI99aG6wyVHdbiqo0ZBrGsVyUWdIn9cqVYbgDbmdh/WoXiXGLNnxXLnloCY5CSBH3qrSIUZSZKOoPWnFhOVUPFfEXDpoqu0ea69IgmuL3xEJQm1hrmYgHUz66RtFS5o0joyNCLBNNz9/wBaV1avA6Des6s/ERR8+HuqTBLDXTn80fUeXpVn4Px+1iQWtvPKJGafNV1A1AmKncW9J1bJu/c/dBg9a9w1sjUmmBsXzJlV2jLq3Q6nTaOXWnuGt5FJYmTqZYt+O2+wqzFquxZ7SncA+omk8ZGUyQOckwPrVS7R9q2DmzYIQj5rrCQvoOZ89h51H4HhC4nKXd7x1ctMl1H8GchRMqOQ1muhenxc3Rh72fBWWpOKWToty2zbZVZS0+QBmaUu3DMa+h38qr/CMJDErhksoHzKXLPc0AiDm8OusbDzqaxTksHU5TOoABz7AAyJG3Iipej8Ff1KTz/oWtueekUXrxA0pXD3kI8WpkySOZ9tIGlLfsSef1rGUGmdENeMkNFM60oopZ8OqgkD9dab3Xjaoao1U1LgchtK8amZxMDY0LjPDrvRYbGKFta6NNLd2a6S9rE1Nmu0cIIoe5Amhboid6b3STvRZKVvILjZMbfma9vYnUek02tYXbXWfzp09ryoKpJkZiHmYH5a0zTGaajrUy+HBik2wScwOnn9qRpgiBjdNB9adLfzAGu8RgFgZfSa4toFERQA/wC7n5qVwWAVd9fXlTw26VRa02nH7mMCN1wgUmFUNqdgNG3qPw/HLDIg71MxXXWIIAnU6DXrTftsrvZFmyYv3GBSNYCmWLf4eUnSSJkTSPZHsbbwahie8vQc1w66sZYLPKeZ1MctqKYWkrZOfsbaEET5U5w9lhOaOvnXaEzrXd25AJg6dBP2FVtSM/clJURfHsfat25usApIBGpJJ1GignlWXPxoWcZ3yoCAxGhbLBOoM8ttfWtF43w9MWcrEhEMHKQCXmDrzC6r6k9KZYDsbhLaKrIbkNmJcgltICtpquxIgSRrI0rKatnTpNQjkgU4/jcdpYtsFA3TRSwJ1LGANI0J615b+G2IvE3MRfto7b5VN3ppqVA+9aPYdVAUKFUaAAAADyA2r27iwNtfSmoLlkvVl+MVRSeEfDVbLZzfDtyJtRHp4/OrPg+GXLYhblojXTugu++qtT5bmdSAcprrCWioM8z1noPyqkl0ZylLtidm8VEOhEDdZdfruPcUuoB1y++n4iksMbknNtHlofLy9fKnNNESwwqqdtONm2BaQw7c+nU+0wPP0q03HgEnkCfpWNccxjXsRcI1YyB7THtMn3rp9PC3b6OfVeKJCxw9IIuMjDaJlZ03O9TnB+GFWzu6udcmUllVW1ABMRA0iKgsDw7ItlDLrbz3LhIhZ1I15ksxEdKtOAP9nPk32hR9hXTbllmGp4+KH9s6ff60MdR02ryxt7kfgfwIrpBoOv5jQ/cVJjtOUYkTzGh8wPzjUetL4TH5PC0sp+QjU76qfTeek9Kb2z4yOon3HhP2y0i8lX5ZfEPIfoEVMoqWDbTuD3dFjOonkabPaHSlcC+a2p5xr6jQ/eu2WuTjB1v6GZsDao3jKlLbFddPfXQR71N5aSZJFJxTLhqSjkrXDMTCAPmW4o1VgQSOuo19iakXtBiI3YSD5RNOX4ehnMM0mdSTE8h0FR9/gLDxWHKNOgLMR5zJJPPnWTi0dUdaMv2eYniAtCHlAMoBOgJO0RqTrEVJ2riuiMJAcAgHfUTVexyYxFm4iXVHzFSNgdyrqCY8p1qNwPa4m/kv+EHQSMsdCVIBHL2P1VjaLvatxRdkUnhMUtwEryMescx5b/SuzTF2Jk6a1H94WbYjrO0jl6+VPrwO3Ij7Go7iViENxVkoJyjdgNSB1Omk/nSNItDi2wWdeVJW301rvBDOFcaggGY604bDdJjyFCQnIlctQXajtEmEQmQ12JS3J8RJhc0A5Vnnz1jannaniq4XC3LxMECE2+c6Lod43PkDWUdm+zWJ4oWvXb3d2pMtBd7hPLUxohAmdJGh5WzlilyzR+w+Gu92+IxDM12+wbUQoQfJ3aycqwTA/wC5sd6+qKXdgqqJLMYAHUk7VEdm+BJg7Ztpdv3Aed64XiP4RoqDyApHtn4sJdSJLd2IOxm5bEa+tVwiW90sFiqK7RcVSxZYlwrlSEHzMSdoUamqv2U7XW1w1xb93XDtkmJYqZyLH7zCCs8wATzNRfZuw+Jv22usbiWwQpaCcgJKjkTI3Jk/aocvg109G3cuEWLsfw4x+03AylhCK0iBJl2XkzfYepqyMKUiuYoSoHK3ZwRSRSl2pS3a60UG6htaTURT1roBj0+9eqgGwrk2RM/n0qkqM5SUnkUooopkDDjt/Jh7rdENZRwfE2y3dhP7WdXMEEQeuoEcuutaP2zxGXDlIPjDjQTHgY69NQBPWKxVL5W6SDB3n7fhXd6ePgYTfkafxvi+Q3MEoAREUZhJJJyMQenzE0rZvf2QA/hYfcn8hVOwGI7y8WJkuxJkz8wkfQ6e1WLDk5I5gkfX/wBtaxilFGc09xL8NxPzjqVP/pUae6mlhjdxyDae4B/EmoG3xBRdTDZWFwW2uZv3SubKADzMhj6faRt2CQTyJWPUAz+IrPHYOH/CQtobmbSSNV20MKPyimV65kW4P8P9R/1TTXjl2/Zwt25YIV5QBiM2QEi3OU6HX+LQTJmILJVvi0rX2D3HtyzjwlihZYZQAJBHzACRlHKTnpvzfwayj/bSstnB8VrE/MQI9Vmfsf1tNkVXezuXvT1yHL6ZjP8A/NWOsdZVNmscxRwVrkrSteRWdhQhkpBrLhpUyOkem5++gp7FeEUPI4vbkr2IxOLkqLCMBGpaF84nfSPvUV2jx2Hy5cZhXAUSGTK2QdRcBGQeW3IzVzda5VahxNFq/Ri3Be1f7Jf3e7h2UZGIiUBMRpoQZMCRqfUanwjilnEIr2mLK3lEGNQfMfo05x/AcNeB72yjE8yPEOUq26nzFZLxng+L4Rda7Yd3wxYZiBBHMd5AgHSM+x8pilVGinZr72T1mvTZ06xtGlVLsz2+w18KjMRcnUNIJk7g7ADWRy0q7hKdEuTRC8JTLmQaKHMdRqfCft7g9alu7po9lVzOAAScxkmJGhPkNp+tP12E0IUmYn8U+0f7XfTD2pa2hMBd3O2YdRoQvkJ2atV4DwsYbD2rQ3VAG823Y/Un7Vknw44cMRjFxLn99sq/yhT02A8PuOtbRmk1UVeSdV7UooVBqsds7jW8PccyBKAENB8TokA8twfrVmUVnXxf4nFu1YWe8dicsj5FkZo82iJ/hPSiXAtFtPBnOGfvbp0ADM0BfMzzknUA6861P4UYAJau3WEktkkzy1Mco1XbnNZlhsEq2yS0FRmZtgqjy67gaiSRW39h+Hm1gbCMpRiudlO6m4S5U+YnL7VEeTp1XthRMKs8vvS+XSKFUDak2xSBxbLDORIXmR+gas5bYoEHSuqKKBBRRRQAUUUUARvF8Pnt3R/5cD1Et+QrCcbh2Uh48I0PvrtX0C7FWmCVI5CYIncb6jp0rPeL9m9b1uPAWzJ/KwBH0M/Suz00v8WY6irJQ+Du2cMCAqgBiTHymFI6nWr7hb+ondgJgzB3U+ak6T51U7ODNi6QywNmG+ukEdQQB+jUzhL9tsoDglTKwRnQ76AnUf4T60pa7jJxfHTOhenUoKUee1/BbrHCldxc8QYLAHyjrDSNef1NSi4M5QBA1JM+3T0o4Vi1uKDIzRqPPqAdYO9Pia4pa03yP2orgQ7gFSpAYHSCJBjyPnrVV7V4sKUtj5ndLajnGYNdaOkaepq4TVH7UePHWSo8NlHLNGmYg6T10X71fp23MWqkok5wmzJMHK8KbbcsyzmU+oYSOlT+ExWfQjK4+ZTuPTqPOkcHgV7lVYf4p2IPUdDRcwTHdgSNm2Ye4/7eVVqSuTY4bXBJj+imWS4o8RNwc8vgPsBv9RXWHVpDK5KEbNqfrv8AWs7Db9ji7cCiSYH9dKbrjAY03nbpyp0RNRHEeC5gWtXGtvuNfD7/AEGvkKTvoI7eyWZaSdaq9ntHcssFxKkSdWHiUjqsabk7f9rPhMQtxFdSCCJ0MweYnypxkmKem4gHivMVaW4hRxKsII6jpXTESRziY8jMfga4Z9YJG01WCFaMr7X/AAyKE38AW69zJzL1NptyP8J13gnQVWeAdt8bgvAczrJlLuYxEyFnbXet6cTp1qh9uezqj/5lO4Kp42tXyAhYAyVLMF8WzBtP3hDby4mkNS8MYJ8RLF67bL2yphgcxIWDkOnIHRhBnXppWh8D4il634HD5CVJBk6fKW6ErBjzPSsf4t2i4PcshbOCfvGAJC5LQQjqxDZv+Ugj7U64rOS62yoOn9mrZJXQgR9Y5TS4NHHcjXfhvwZrCeMqTbU25X+O45uXAT5KLA9jVzJ5+dVnsHj+9wNu8fmuNcJgH5lZkj1hBTPtL2gZRkUwZI8PiHudift1naqUtqIlp75N2Sfa7temDtkgZrhgIgPiM7nyUCTOvKsVxvErl661+6xa4x3PIcgNoAEDSnvFuJi4SQcx5kySTpO/PSJq8fDDseGIxuITQGbCMOY/+4Qf/T/zdDU8lqoImOxPZE91bu4pTJIud0VCiR8huAb5RqFPMydQoW+qOdIPr+v60raed6pKjKUnLLPLt7Ly/Xl1NKVFcR4hh2c4a6w1UsZYKFgrALSIYzIHQekuLmMQWwVcONFkEMT5nLz50rDbdIcDEr1jf7UolwHYzUQcUgVrjMERd5mBHnH60pHB8Rs3lz23BTMVDQVBYbxmAn1pbjR6a4Jg4tfP1iujfXrPpTNbRrvuyI/PyjlRbBwiPqKRtMxjaP150tVGTVBSGJwwfceX68x+Z60vRTToRVuM9mO9EaTyP5EfqOVUnF9lrufLchY1D7sNTtETMHp1rX6qfH8VbuXV7u7LjwlQpII1Ig+vTeav3JPkIRrBGcL4ncsFbbDPmIAmAC2gkHkTpyqzYLiIuMyZHVlGocAb+p1+lRNzgWhOaGP63rrHcft29cSGDoBsgYSDuDzU6aEaRIMia5Uot0jrnbV8ssqWOv0H5mksRw5HbxKuUkEjfMQIEjaI05+1RGD7ZYJkzi+ozEhbWoueEwT3XzAHeYiCp51K8K4ql/NlkFSJBKNodjKMwgwec6GtV44RzNN5Y/ooopkhSCkICWZRJJ1MDX1pemd/hlp2zuuY/wCJmZR6ITlHsNaTGvs4ucYsrvcUD+KZH1FMsV2swaAl7yxtoGf/AKAdKef7PwubL3VjN0yJPnpFLf7Ns/8A4ben+Bf6UsleP2U3ifaexfXucHhv2gkTLW2W2vmRlzsZ6D30plwfsjjwc/fGx5B4J9VQER6tNaLYw6IIRVUbwoAE+1M+JcVW3Cjx3WMKi6k+vQedLauWX7j4iiuYrsveyk3eIuBBmEHPzYmTvGlVDF9nbt5guFv4q7B1cm2iD1hQD6EzWmJwk3DnxJznkgJyL6jTP7iPxqTW2AAAAANgBAHoKaiS9Rma8O+H+Iynv8bcVtI7mNOssy6nbl1pvi/hLYuNmfG4pz1c22PtKaVpps6zR3dWkjJykUPB/DXB22VgM8aeJVIPXMP3p6beVT3+xjCqLoAUQIthevJSBtA25VLuimYIB5x+dJXfD8xHlv8AoU6iNT1LwZCnGriYa1hs4VbKZSqDQvEMzsYkEltBA11nQ1WeM8acmA5jmRp0OnT2pLFcRLEzCySSPea54XhUuXVNz/dltzIESMxJgmAOgJrL9nRFdIt3wx7JHEuL11SLSw3828AeZjU7geoNbcoEACIGgjlHLSqjg+MYbDWVs2lYALpIgsTuSJkE67kbRyqU4FevOZNsray6ZoDMxI1gct/tSU1dIc9OTjueF0J9o+0trCeFke45iEQdZAzMYAEg9fSoTF3eJYwAWQLFto1JKmPNozH/ACxV1GFXQsAzARmIE9fxpeqpvkzU4xWFkzsfC8N/vcU7HnCfhmY/hUtwr4e4awZFzEEnci6benSbWUx71bq8ZgKNqE9Wb7GVvhdtRAUEBcoDeOB6tJPvNNLvZrDsS3dC25/ft/2be+XRv8wNS114E+n30rpdtd6dIndLkZ4DCvb8LMGA2YiGI/xAQoPmAAeginboDvVf7TteZlt2hciJYqDBJ0AJHSNvOnfDOHMbCrfLEhs0FpiPlBPMc4p0H2yWAivaKKCQooooADVat8LVLy5ipynw/wAXly/X4Qvbzt8cNd/ZcOoN0BTcdtQgaDCr+8+UzJ0Ej5tQIL/4g2mcAW7rMxGZmyiNgWOWdh0HLQUfRcUzTiBVT7eYQMLfUyD6DX9etOeDdprFy6bKXHuGZDXP7MNmiRbAUEhY566nfepHtM1te6Tu0a7cbKhdcwGqzOsmZURI3mRFRGNOy9zRB/8Ah1cRbtXcLfaxiLVpLZYDMrKuY5LlsmDBYkHcTzmvOBjGWsaxxCNcdbIDMly2Va2WfIUti3bJIYNMyQI6iXHCMWygKqGFLNKAyMwjb1/CpzBx3ve5GBNtUJJOgBLQqnzbfyHTV7k8hKEo4JLBYxLq5rbSJIOhBBG4ZTqrDoRNL0xwuEi9duiAtxbYgcymaWbzIYL6KNeQdXLoHmaZlWcClJ3w2U5SA3InUUjbuEsJPty/XnXjYvXQaUWVsZxwzh/dA65mbc7e3+tLNfIgFQT0UyfuBp6xTiimTYiwYjkv3/0H3pDAcOW2S3zXG+ZyACecADRR5D709ooCwopu1k8jH118v9aSxN/u1iCTEzqY+tKxqN8DwVy66GNPOq3+1kLm5akj+vnTpO0IIPgOhETz6+9LcjV6EuhBLbTO3Wa54jcc5fFtOwqsdq/iFasXCltS7nUltANNvOs/x3by9cYtnj029qimbb4p5K1g7DXWEySWAHmT/pVz7O8Lv4i4beEQuqEJ3reFEAOYy0aSSTGp1GlTvZvsqHxSWhI7sZ7jA/KkFQgI/eafYTG1a5hMKlpBbtoqIugVQAB7CqqyJv28dkFwDsrZwwzue8uACXbZY/hB29TJqwrcBEggjypDHYXvBGYr7SD6ivMNhxbUKNY59TzNUlXBhKTlmTFLl4ivExIO+n4UldBieUxXAih2NUx49yK8ENrSKLO33pwiRQJpI6IooopkBRRSRsD9f13oGhWiuUQDYRXVAgpPEX1RS7sqqoksxCgDqSdAKju0nH7OCsm7dO5yoo+Z2gkKo9AT5AE1mOIweO4qe+vsLOHGqKZygdVTTMY/faPLTSkUo2RXxN4rhr2LF3DMX/swtxgIUspOUqTqxgwTtAWOdV3h8oc7CFbnv6TV8u/C9rik2cQCY0FxYBP8ykx/ymqziuy93CHLiLcFtjuh/lYaHr18hUs0j8HiPMEH3q29n+0dzxPezXmw9tnQswkKB4hJ1kwNdT15VT8HgwLiAMQjMFPOJ0BE8pitKwHZZMPhr7l873rZUTEAZHgARuSwJ32FESpNE/w60/7NbuIgFy5lZwxMeLUxExyipRrJ7yMo7vLqZM5p0AHSJnXpXXDritbXKZAAH02pzVbUYuTsYYF38cqVAaADBJ89DHMfQ0uV1pZjXFylVDTtiW1JsnSlWXnSqW+tJZK3Udg17RRVmQUhjbjrbZkTOwEhZjMek8qXpO/dCqWPKgaM4xPxdt2Wa3fwt1Li6FZH5xVcx3xluOzBcOot8gScx9SNBWidruzeExlsXLiAupGVhod/lPUeRrKu2vYm1h1uYhXVUkf2ZMHX+HrUt9GsY43DtviIO4S6UU3Wdla2J0WNCD186qicdx164Ldp3BdxlA3nlrSPZvBi8xVmIVQW6mPL3itq+G3Y8Ya2L95R3zjQR8i8v8x50ki5ydW2Vfgnwle6/eY6+xY6lU1P+Zj+Qq/cP7EYOyuW3Ytx1ZcxPqTVkivaqjHeymfCywf2V7ratduEkneFCqBPOGzn3NXOq18OLZXh1ieedvZncj7RVloXAajuTCuSK8t3Q0xyMe9ePc6Cf1yp2TR0Frx7QO9dK0iRXtAuDlEA2rqimWKvgSWMAfo+utLgpK2PaKY8Ka4VlxlB+Uc48+npT6mJqnQUUUUCCmmNxuRWyL3lwCRbVlDGdBqxAUTzNccVvMAFU5c0y25EdB1PXl9KreLUqM2Zsw2M8/LpQXGNlexuCe5f/aOJurOkm3hrYLpbHJS2gYkhS0kTAnSAr/FcDxOOYXGdbdhoIXN3hjlIELPlOnnXrop1Kg85ME1G4JFm4wAEsRA5AabeZ1+lOn0XhFt4TwW3ZTu7NxiA3iYkGCIaFgQNYMaxRjMRmc2LlsXbbqJVtTzJIJOh6a6ECpDhoQWlS2ymAJykaE6kmNjM14cL42cclCj2kn6kge1c7k7NFtzZmvarsy2Gy3UzNYeCCfmQnUK/5H233lOzvG+9UW3bxIANfop9wI9R5irKt633tyziGzI6BDmZshJygBVmFJ1g7zznfJ+1uHuYDEsqsQyzlb+NDqsjYyN/MHpWi+US8YZpmAxRWArEMPCY6rG/tr71IXeK3CPm9wBWJ2O22IDh4UmIYagNHynUmGGonmN9hUoO2eIxMWrSKjNCiGBMnQBS0AE7fSKsjDNV4ZxHvMQLYYswXM5/hXz82MAD1PKrIao/wms5bN4NrdZ1djuSCsKCecEMf81XoCp5JeGCpprXdFFNIiwooopgFI4xZQ869u4hFXMzADqTAqBPa2xcuGzYbO4EkgeFR68zSZUU28Cd+6ATLQN45MOsdaovxM4W+LtK1lHfuzsOYjXTnVjx/drcS2PnuEnUknqSafcNs3++NvKndqgOfnJ2EfnWfZ3NRUMlN+DvYthOLxAgHS3bYamD8zA8p2rYqjcNbYfNEcop/baRWiOOaO6KKJpmYlhcOttFtoIVFCqOgUQB9BRicQttSzGAK7uOFBJIAGpJ5VRLXEX4hxBRbDHB2JlgPDcubb9BQNK+S1cCtkIzNEu5bQzAO0+cU+NkdSB0/Wtd27YUQBpXVKht5weKsCBXtFFMkQxt3KhMxVLw3GBd4gyKWe1YQLAGbNcOp2HLzqP+IPaW5cv28Bg4a4TLka5eg9t6t/ZPs8mDshBq51dv4mOpNI0XirJiw7ESy5fKZ/ClKKKZmFeMYEnlXtcXUzKVPMEfXSgCHxl3Mc3lt0HIevWoTHXZOXl+JqVxgykrG3rr9SairiDOaaNuhlepjZX5upJJ/L7Cp/C4VWcBmyjr+tvU1z2g4dbtQyGcxggkEjodOX+lO+iaGHDsc1lsywZEEHmP61YLXH7JmcywJgjf0gn7xVUO9JlydF368h/WlKCYJtCl099dEjNLyY18R2AHOJP2pj8acD4MLdywxRrbazqMrKJO8EvrT+xbZGTJEowbXnGvi9fzNNvirfzcPwxYkt3xmTJHhfQnnoRrTaS4BtvLMfqxdjrE3Vc6Qwg9DI19qrpqwdm3jMOoB/I/lSlwEeTZuynEUDizkAYtdBMQYDF1B9JcRyirhWednSnfF3Yq9tbLctWyotwNPPMfWZrQ6zhYanIVxevKgLMQAOZ0qCxvaIljawts3rgIDEGESeZPOPKvbPZ3vDnxdw3mP7ny218gg39TVX8C21ljDinb/D2zFoPfbpbUnX1iKY8P7TYm+rlrFyxJ8M6jL786u1jCoghEVR5AD8KGwykyRJpNMqE4p8GRdt+zd++xxK32RUSe7kmMo/dA0E1FfDjGd3axGKu6KCFzE6sd4A61q/H7VlLNxLtxVV12O/6NYTxfiRcrh7KkIphUGsk6e5qfo23LlEtwviGKxfEbZsiWJ2Oyp+8T7c623hqEO0jUAAnlI86q/wANezn7NauEp/auQGLaaDZR5A1d7SQIppGcpNJpgVpNiRS9GWqoyTPVOmtN2uGTrS146U3iiwSsrOLs3ce6S5TC7lAINzpJ6eVWi1atWLYVQttFHkoFYld+JXEL0Jh7aWV5ZVzH2mkLPZnjOPJa7cfL/wCYxA9lFJFyV/o2RO1eCLZRirWbpmFSCcQtHa6h9GH9awHinwxxtvUlG6ZTU32D7FWbxNvENdW4hlkJIDL5eVOxbFya2/HMODl762W/hDAn6Cs7+IPxFZScPhJHK5dg+Ac8vnHOrxguyODtRksKCOe5+ppbEdmsK4YG0sNvGk0ZBbUVz4ZcFwlu2b9m4L1x/mcmWE7z0q9VX+FdlcPhrmbDL3Z/e1JB8iJ/WlVrtn21xFq8bGHyDLo9wrJmJOUEkaSBrznpQKXk8Gik1DYztTg7ejX0J6JNw++QGPesw47xq/es4fvbrMGV2bZQSLjKAVQBTAVSNP3jUMjUAomtf+O8J1uHzyf1NOrHanD3dLTkv0yMCBIBOojmP1NZGhqJu8UYXAysQoPLSRsZ6+lKytiNuu6n3qNf5yZj9RTnh5/s1lckCIGwjTT/AA6aeVIYm3BPSrRQEaTyppftzypdb0CImhry+f0pktMjv2MdKVt2gPwFOfEQTGUDUluVJNeVNSyyOpGn1/X3piLJwbAIi5mylm6wY6AedZX8Y+JG9fTDWRKWAc8Rl7xokTtKqF9yRuDUzj+2D2xNocwpY8gxCkqNxE7nz0qndpcAr2XuBFDzmLBQCdZaTvsSaWxg3ZUO7IMRqDB9am+A22NxVAksIA6k7D602up48/8AGA/u3zfRww9quvZPhdi4puWrpW+qMDaugKCXBUNbu6DXxQDrv6mZMIonMBhmu3XNvxZSuo5hcqZh6/N9a02/azKVJIBEGNDFVfs/gcUMMiK1lBmzHQliJkq0aTynpFWtTNRCNWwm+vgSwuGS2oVFCgCNKWopnxDFZIAMMdfYVXBKTk6HlM8RxO2k5miDG1MRxJvmeAMp0mPuay3t92ua6vdWJJLZWYa69A3Wp3fBqtGvyPfiZ2lF+93dpZCwoIPzE9alvhd2Ke3d/a8Rb1KzbBPyk846xXnw8+HjKVxGMUEsJFs7gnYt5xWqqIEDYU0iJSXCPa8r2iqMzyK9oooAK5KDoK6ooAhuE9mMNhwAlpZH7xEmpgCvaKB2csgO4BrwWxMwJ6xrXdFAgooooAatdYMVCEzqGJAXYaHXNPtHnWIdoFZcVfDxm71yY1HiYsI8oIrZeKpdZgqQAQRJMTzIkA8gOXWqP2v7IXcrYjMpYAAqNAQJ2nUt69OVBSKtgLff2jZAJuoxuWgN3BAF1AObQquB5ONzTBDUP/tdpBtgggghpMgjUERsam7OOfGsAylMQdTctW8yv1a7bAlT1ddNdRRRSE8Y8I3pUIRVnxPY/icEGwzqOa93B9AYY/Sq1iLTI2V1ZG6MpU/QjalQ2zQ/h5jSLDm4Wy5yM7HwqqImjE/KACAJJ6DRauiXFYBlYGROmog7EEbiKwAcWuoClu4yq26z4SRsSp0J038qXXtJjII/aLhnrBI9CRK+0VSCzcruJUNlMzlLTlOVQP4miB6EzVR4t2/sWgVCM93XwKVKgjQZrgMfSY51ldy4xzSzHNq0knMf8U7n1pNQBTE5Fn4t22xF5GSAqvMgw5AMeEHKoy+oJ13qL4DjCt/xHS6YYkyc2pBJPUn71Ga16UkU+CbL8LQdWSZBBEjz9OdTnB8KLuHGYAlgQw6MJVh9QRVS7Bd2EuG5cRAH1DMF5Dqdj18qveAwzWsz/NZu3BlK+IrcbQqQBsxAIImSSNyJbkUZrxLhjWnbDOQChz2nYhVa23zAk9In1DgSSKm+yPB7t8EWUZrKsDduxGYidFB1OhIAEkSSYkAX3H9l7eNVcwVijcyQV6gxrB6VcuG4FLFtbVsAKojQR9hWbVhuoQ4fdz2wEIUrpG40206elPLDHYiDvH4x5Tr71y+GGbMvhbqOf8w513rzGvl/rQQxSq7xB2uFvCfDpqIgTHvUnj74IKGQd6rHEsPevvlt3ikbmMxJ6Cs5s6vTwryZDdoMbbPeYOX74rCEAmSdhFSXw+7BjCoLl/xXJzKh1Fs9fNqn+z/Z1LJN1/Hff5nbf0Ufuip6nCNEa2rudIKKKKs5wooooAKTvuQBA1Jgfc/lSlFAI4adAPcn+ld0UUAFFFFABRRRQAUUUUAI4rYfzJ/1LUR2x/u/+YfgaKKBowntR/fcR/OPwFWD4Yf3i7/wD/8Ass0UU+yzWuxv9xw//DWs9+KHyL/xT+BryikJcmV4/ZP5n/Fa4tV5RTA9NeLvRRVCFORrlKKKQCd35q2zhP8A9Iufy2v+paKKlldF6uf3lf8Aht+IqQoooIYUUUUCIjiXzj9daiuFf773/Oiis2d+n+D/AEWyiiitDgCiiigAooooAKKKKACiiigD/9k=',
            ),
          ),
          accountEmail: Text('jane.doe@example.com'),
          accountName: Text(
            'Jane Doe',
            style: TextStyle(fontSize: 24.0),
          ),
          decoration: BoxDecoration(
            color: Colors.black87,
          ),
        ),
        ListTile(
          title: const Text('Home'),
          leading: const Icon(Icons.home),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Product'),
          leading: const Icon(Icons.add_shopping_cart),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/product');
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Profile'),
          leading: const Icon(Icons.person),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/profil');
          },
        ),
      ],
    ),
  );
}