.class public final Lcom/android/okhttp/HttpUrl;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/HttpUrl$Builder;
    }
.end annotation


# static fields
.field static final greylist-max-o FORM_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

.field static final greylist-max-o FRAGMENT_ENCODE_SET:Ljava/lang/String; = ""

.field static final greylist-max-o FRAGMENT_ENCODE_SET_URI:Ljava/lang/String; = " \"#<>\\^`{|}"

.field private static final greylist-max-o HEX_DIGITS:[C

.field static final greylist-max-o PASSWORD_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"

.field static final greylist-max-o PATH_SEGMENT_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|/\\?#"

.field static final greylist-max-o PATH_SEGMENT_ENCODE_SET_URI:Ljava/lang/String; = "[]"

.field static final greylist-max-o QUERY_COMPONENT_ENCODE_SET:Ljava/lang/String; = " \"<>#&="

.field static final greylist-max-o QUERY_COMPONENT_ENCODE_SET_URI:Ljava/lang/String; = "\\^`{|}"

.field static final greylist-max-o QUERY_ENCODE_SET:Ljava/lang/String; = " \"<>#"

.field static final greylist-max-o USERNAME_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"


# instance fields
.field private final greylist-max-o fragment:Ljava/lang/String;

.field private final greylist-max-o host:Ljava/lang/String;

.field private final greylist-max-o password:Ljava/lang/String;

.field private final greylist-max-o pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o port:I

.field private final greylist-max-o queryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o scheme:Ljava/lang/String;

.field private final greylist-max-o url:Ljava/lang/String;

.field private final greylist-max-o username:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 258
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/okhttp/HttpUrl;->HEX_DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor greylist-max-o <init>(Lcom/android/okhttp/HttpUrl$Builder;)V
    .registers 6
    .param p1, "builder"    # Lcom/android/okhttp/HttpUrl$Builder;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    .line 312
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    .line 313
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    .line 314
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl$Builder;->effectivePort()I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    .line 316
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    .line 317
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 318
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_38

    .line 319
    :cond_37
    move-object v0, v2

    :goto_38
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    .line 320
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 321
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    .line 322
    :cond_45
    nop

    :goto_46
    iput-object v2, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    .line 324
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/HttpUrl$Builder;Lcom/android/okhttp/HttpUrl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/okhttp/HttpUrl$Builder;
    .param p2, "x1"    # Lcom/android/okhttp/HttpUrl$1;

    .line 257
    invoke-direct {p0, p1}, Lcom/android/okhttp/HttpUrl;-><init>(Lcom/android/okhttp/HttpUrl$Builder;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/HttpUrl;

    .line 257
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/lang/String;IILjava/lang/String;)I
    .registers 5
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 257
    invoke-static {p0, p1, p2, p3}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/HttpUrl;

    .line 257
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/HttpUrl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/HttpUrl;

    .line 257
    iget v0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    return v0
.end method

.method static greylist-max-o canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 24
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "encodeSet"    # Ljava/lang/String;
    .param p4, "alreadyEncoded"    # Z
    .param p5, "strict"    # Z
    .param p6, "plusIsSpace"    # Z
    .param p7, "asciiOnly"    # Z

    .line 1590
    move-object/from16 v9, p0

    move/from16 v10, p2

    move/from16 v0, p1

    move v11, v0

    .local v11, "i":I
    :goto_7
    if-ge v11, v10, :cond_67

    .line 1591
    invoke-virtual {v9, v11}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    .line 1592
    .local v12, "codePoint":I
    const/16 v0, 0x20

    if-lt v12, v0, :cond_43

    const/16 v0, 0x7f

    if-eq v12, v0, :cond_43

    const/16 v0, 0x80

    if-lt v12, v0, :cond_1f

    if-nez p7, :cond_1c

    goto :goto_1f

    :cond_1c
    move-object/from16 v13, p3

    goto :goto_45

    .line 1595
    :cond_1f
    :goto_1f
    move-object/from16 v13, p3

    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_45

    const/16 v0, 0x25

    if-ne v12, v0, :cond_36

    if-eqz p4, :cond_45

    if-eqz p5, :cond_36

    .line 1596
    invoke-static {v9, v11, v10}, Lcom/android/okhttp/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_36
    const/16 v0, 0x2b

    if-ne v12, v0, :cond_3d

    if-eqz p6, :cond_3d

    :cond_3c
    goto :goto_45

    .line 1590
    :cond_3d
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v11, v0

    goto :goto_7

    .line 1592
    :cond_43
    move-object/from16 v13, p3

    .line 1599
    :cond_45
    :goto_45
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    move-object v14, v0

    .line 1600
    .local v14, "out":Lcom/android/okhttp/okio/Buffer;
    move/from16 v15, p1

    invoke-virtual {v14, v9, v15, v11}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    .line 1601
    move-object/from16 v1, p0

    move v2, v11

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 1603
    invoke-virtual {v14}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1590
    .end local v12    # "codePoint":I
    .end local v14    # "out":Lcom/android/okhttp/okio/Buffer;
    :cond_67
    move/from16 v15, p1

    move-object/from16 v13, p3

    .line 1608
    .end local v11    # "i":I
    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 14
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "encodeSet"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z
    .param p3, "strict"    # Z
    .param p4, "plusIsSpace"    # Z
    .param p5, "asciiOnly"    # Z

    .line 1648
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V
    .registers 16
    .param p0, "out"    # Lcom/android/okhttp/okio/Buffer;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "encodeSet"    # Ljava/lang/String;
    .param p5, "alreadyEncoded"    # Z
    .param p6, "strict"    # Z
    .param p7, "plusIsSpace"    # Z
    .param p8, "asciiOnly"    # Z

    .line 1613
    const/4 v0, 0x0

    .line 1615
    .local v0, "utf8Buffer":Lcom/android/okhttp/okio/Buffer;
    move v1, p2

    .local v1, "i":I
    :goto_2
    if-ge v1, p3, :cond_89

    .line 1616
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1617
    .local v2, "codePoint":I
    if-eqz p5, :cond_1c

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1a

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1a

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1a

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1c

    :cond_1a
    goto/16 :goto_82

    .line 1620
    :cond_1c
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2d

    if-eqz p7, :cond_2d

    .line 1622
    if-eqz p5, :cond_27

    const-string v3, "+"

    goto :goto_29

    :cond_27
    const-string v3, "%2B"

    :goto_29
    invoke-virtual {p0, v3}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    goto :goto_82

    .line 1623
    :cond_2d
    const/16 v3, 0x20

    const/16 v4, 0x25

    if-lt v2, v3, :cond_55

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_55

    const/16 v3, 0x80

    if-lt v2, v3, :cond_3d

    if-nez p8, :cond_55

    .line 1626
    :cond_3d
    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_55

    if-ne v2, v4, :cond_51

    if-eqz p5, :cond_55

    if-eqz p6, :cond_51

    .line 1627
    invoke-static {p1, v1, p3}, Lcom/android/okhttp/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_51

    goto :goto_55

    .line 1641
    :cond_51
    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_82

    .line 1629
    :cond_55
    :goto_55
    if-nez v0, :cond_5d

    .line 1630
    new-instance v3, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v3}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    move-object v0, v3

    .line 1632
    :cond_5d
    invoke-virtual {v0, v2}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    .line 1633
    :goto_60
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result v3

    if-nez v3, :cond_82

    .line 1634
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 1635
    .local v3, "b":I
    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1636
    sget-object v5, Lcom/android/okhttp/HttpUrl;->HEX_DIGITS:[C

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    invoke-virtual {p0, v6}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1637
    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1638
    .end local v3    # "b":I
    goto :goto_60

    .line 1615
    :cond_82
    :goto_82
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto/16 :goto_2

    .line 1644
    .end local v1    # "i":I
    .end local v2    # "codePoint":I
    :cond_89
    return-void
.end method

.method static greylist-max-o decodeHexDigit(C)I
    .registers 2
    .param p0, "c"    # C

    .line 1565
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 1566
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 1567
    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 1568
    :cond_25
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist-max-o defaultPort(Ljava/lang/String;)I
    .registers 2
    .param p0, "scheme"    # Ljava/lang/String;

    .line 424
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 425
    const/16 v0, 0x50

    return v0

    .line 426
    :cond_b
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 427
    const/16 v0, 0x1bb

    return v0

    .line 429
    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method private static greylist-max-o delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .registers 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiters"    # Ljava/lang/String;

    .line 1503
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_12

    .line 1504
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    return v0

    .line 1503
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1506
    .end local v0    # "i":I
    :cond_12
    return p2
.end method

.method public static greylist-max-o get(Ljava/net/URI;)Lcom/android/okhttp/HttpUrl;
    .registers 2
    .param p0, "uri"    # Ljava/net/URI;

    .line 652
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o get(Ljava/net/URL;)Lcom/android/okhttp/HttpUrl;
    .registers 2
    .param p0, "url"    # Ljava/net/URL;

    .line 625
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o getChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .registers 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 636
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    .line 637
    .local v0, "builder":Lcom/android/okhttp/HttpUrl$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object v1

    .line 638
    .local v1, "result":Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    sget-object v2, Lcom/android/okhttp/HttpUrl$1;->$SwitchMap$com$android$okhttp$HttpUrl$Builder$ParseResult:[I

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_50

    .line 647
    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 642
    :pswitch_34
    new-instance v2, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 640
    :pswitch_4b
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    return-object v2

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_34
    .end packed-switch
.end method

.method static greylist-max-o namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 7
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 485
    .local p1, "namesAndValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_5
    if-ge v0, v1, :cond_2c

    .line 486
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 487
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 488
    .local v3, "value":Ljava/lang/String;
    if-lez v0, :cond_1c

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    :cond_1c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    if-eqz v3, :cond_29

    .line 491
    const/16 v4, 0x3d

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_29
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 495
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2c
    return-void
.end method

.method public static greylist parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;

    .line 615
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    .line 616
    .local v0, "builder":Lcom/android/okhttp/HttpUrl$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object v2

    .line 617
    .local v2, "result":Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    if-ne v2, v3, :cond_12

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    :cond_12
    return-object v1
.end method

.method static greylist-max-o pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 449
    .local p1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_5
    if-ge v0, v1, :cond_18

    .line 450
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 453
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_18
    return-void
.end method

.method static greylist-max-o percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 8
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "plusIsSpace"    # Z

    .line 1522
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_25

    .line 1523
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1524
    .local v1, "c":C
    const/16 v2, 0x25

    if-eq v1, v2, :cond_15

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_12

    if-eqz p3, :cond_12

    goto :goto_15

    .line 1522
    .end local v1    # "c":C
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1526
    .restart local v1    # "c":C
    :cond_15
    :goto_15
    new-instance v2, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v2}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 1527
    .local v2, "out":Lcom/android/okhttp/okio/Buffer;
    invoke-virtual {v2, p0, p1, v0}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    .line 1528
    invoke-static {v2, p0, v0, p2, p3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IIZ)V

    .line 1529
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1534
    .end local v0    # "i":I
    .end local v1    # "c":C
    .end local v2    # "out":Lcom/android/okhttp/okio/Buffer;
    :cond_25
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "plusIsSpace"    # Z

    .line 1510
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o percentDecode(Ljava/util/List;Z)Ljava/util/List;
    .registers 7
    .param p2, "plusIsSpace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1514
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1515
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1516
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_20

    invoke-static {v2, p2}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1517
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_d

    .line 1518
    :cond_25
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static greylist-max-o percentDecode(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IIZ)V
    .registers 10
    .param p0, "out"    # Lcom/android/okhttp/okio/Buffer;
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "plusIsSpace"    # Z

    .line 1539
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_47

    .line 1540
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 1541
    .local v1, "codePoint":I
    const/16 v2, 0x25

    if-ne v1, v2, :cond_31

    add-int/lit8 v2, v0, 0x2

    if-ge v2, p3, :cond_31

    .line 1542
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v2

    .line 1543
    .local v2, "d1":I
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v3

    .line 1544
    .local v3, "d2":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3d

    if-eq v3, v4, :cond_3d

    .line 1545
    shl-int/lit8 v4, v2, 0x4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1546
    add-int/lit8 v0, v0, 0x2

    .line 1547
    goto :goto_41

    .line 1549
    .end local v2    # "d1":I
    .end local v3    # "d2":I
    :cond_31
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_3d

    if-eqz p4, :cond_3d

    .line 1550
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1551
    goto :goto_41

    .line 1549
    :cond_3d
    nop

    .line 1553
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    .line 1539
    :goto_41
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 1555
    .end local v0    # "i":I
    .end local v1    # "codePoint":I
    :cond_47
    return-void
.end method

.method static greylist-max-o percentEncoded(Ljava/lang/String;II)Z
    .registers 5
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1558
    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_27

    .line 1559
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_27

    add-int/lit8 v0, p1, 0x1

    .line 1560
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    add-int/lit8 v0, p1, 0x2

    .line 1561
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v0

    if-eq v0, v1, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 1558
    :goto_28
    return v0
.end method

.method static greylist-max-o queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p0, "encodedQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_43

    .line 506
    const/16 v2, 0x26

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 507
    .local v2, "ampersandOffset":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 509
    :cond_19
    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 510
    .local v4, "equalsOffset":I
    if-eq v4, v3, :cond_35

    if-le v4, v2, :cond_24

    goto :goto_35

    .line 514
    :cond_24
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 511
    :cond_35
    :goto_35
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :goto_40
    add-int/lit8 v1, v2, 0x1

    .line 518
    .end local v2    # "ampersandOffset":I
    .end local v4    # "equalsOffset":I
    goto :goto_6

    .line 519
    .end local v1    # "pos":I
    :cond_43
    return-object v0
.end method


# virtual methods
.method public greylist-max-o encodedFragment()Ljava/lang/String;
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 578
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 579
    .local v0, "fragmentStart":I
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o encodedPassword()Ljava/lang/String;
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    .line 386
    :cond_b
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 387
    .local v0, "passwordStart":I
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 388
    .local v1, "passwordEnd":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist encodedPath()Ljava/lang/String;
    .registers 5

    .line 443
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 444
    .local v0, "pathStart":I
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 445
    .local v1, "pathEnd":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o encodedPathSegments()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 457
    .local v0, "pathStart":I
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 458
    .local v1, "pathEnd":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v3, v0

    .local v3, "i":I
    :goto_22
    if-ge v3, v1, :cond_39

    .line 460
    add-int/lit8 v3, v3, 0x1

    .line 461
    iget-object v4, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const-string v5, "/"

    invoke-static {v4, v3, v1, v5}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v4

    .line 462
    .local v4, "segmentEnd":I
    iget-object v5, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    move v3, v4

    .line 464
    .end local v4    # "segmentEnd":I
    goto :goto_22

    .line 465
    .end local v3    # "i":I
    :cond_39
    return-object v2
.end method

.method public greylist-max-o encodedQuery()Ljava/lang/String;
    .registers 6

    .line 478
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 479
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 480
    .local v0, "queryStart":I
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "#"

    invoke-static {v1, v2, v3, v4}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 481
    .local v1, "queryEnd":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o encodedUsername()Ljava/lang/String;
    .registers 5

    .line 373
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    .line 374
    :cond_b
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 375
    .local v0, "usernameStart":I
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 376
    .local v1, "usernameEnd":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 656
    instance-of v0, p1, Lcom/android/okhttp/HttpUrl;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/android/okhttp/HttpUrl;

    iget-object v0, v0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public greylist-max-o fragment()Ljava/lang/String;
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 660
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o host()Ljava/lang/String;
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o isHttps()Z
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist newBuilder()Lcom/android/okhttp/HttpUrl$Builder;
    .registers 4

    .line 595
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    .line 596
    .local v0, "result":Lcom/android/okhttp/HttpUrl$Builder;
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 597
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 598
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 599
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 601
    iget v1, p0, Lcom/android/okhttp/HttpUrl;->port:I

    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_26

    iget v1, p0, Lcom/android/okhttp/HttpUrl;->port:I

    goto :goto_27

    :cond_26
    const/4 v1, -0x1

    :goto_27
    iput v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 602
    iget-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 603
    iget-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 604
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 605
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedFragment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 606
    return-object v0
.end method

.method public greylist-max-o password()Ljava/lang/String;
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o pathSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o pathSize()I
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-o port()I
    .registers 2

    .line 416
    iget v0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    return v0
.end method

.method public greylist query()Ljava/lang/String;
    .registers 3

    .line 524
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 525
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/okhttp/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o queryParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 540
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "size":I
    :goto_b
    if-ge v2, v0, :cond_27

    .line 541
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 542
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 540
    :cond_24
    add-int/lit8 v2, v2, 0x2

    goto :goto_b

    .line 545
    .end local v0    # "size":I
    .end local v2    # "i":I
    :cond_27
    return-object v1
.end method

.method public greylist-max-o queryParameterName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 569
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o queryParameterNames()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 550
    :cond_9
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 551
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_15
    if-ge v1, v2, :cond_23

    .line 552
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 551
    add-int/lit8 v1, v1, 0x2

    goto :goto_15

    .line 554
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_23
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o queryParameterValue(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 573
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o queryParameterValues(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 559
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_15
    if-ge v1, v2, :cond_31

    .line 561
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 562
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_2e
    add-int/lit8 v1, v1, 0x2

    goto :goto_15

    .line 565
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o querySize()I
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public greylist-max-o resolve(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .registers 5
    .param p1, "link"    # Ljava/lang/String;

    .line 588
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    .line 589
    .local v0, "builder":Lcom/android/okhttp/HttpUrl$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object v1

    .line 590
    .local v1, "result":Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    sget-object v2, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    if-ne v1, v2, :cond_12

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return-object v2
.end method

.method public greylist-max-o scheme()Ljava/lang/String;
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 664
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o uri()Ljava/net/URI;
    .registers 5

    .line 348
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->newBuilder()Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->reencodeForUri()Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "uri":Ljava/lang/String;
    :try_start_c
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_11} :catch_12

    return-object v1

    .line 351
    :catch_12
    move-exception v1

    .line 354
    .local v1, "e":Ljava/net/URISyntaxException;
    :try_start_13
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "stripped":Ljava/lang/String;
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_20

    return-object v3

    .line 356
    .end local v2    # "stripped":Ljava/lang/String;
    :catch_20
    move-exception v2

    .line 357
    .local v2, "e1":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public greylist-max-o url()Ljava/net/URL;
    .registers 3

    .line 329
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 330
    :catch_8
    move-exception v0

    .line 331
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o username()Ljava/lang/String;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    return-object v0
.end method
