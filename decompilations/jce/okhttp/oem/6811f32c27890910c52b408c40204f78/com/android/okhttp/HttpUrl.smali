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
.field private static final synthetic -com-android-okhttp-HttpUrl$Builder$ParseResultSwitchesValues:[I = null

.field static final FORM_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

.field static final FRAGMENT_ENCODE_SET:Ljava/lang/String; = ""

.field static final FRAGMENT_ENCODE_SET_URI:Ljava/lang/String; = " \"#<>\\^`{|}"

.field private static final HEX_DIGITS:[C

.field static final PASSWORD_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET_URI:Ljava/lang/String; = "[]"

.field static final QUERY_COMPONENT_ENCODE_SET:Ljava/lang/String; = " \"<>#&="

.field static final QUERY_COMPONENT_ENCODE_SET_URI:Ljava/lang/String; = "\\^`{|}"

.field static final QUERY_ENCODE_SET:Ljava/lang/String; = " \"<>#"

.field static final USERNAME_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"


# instance fields
.field private final fragment:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final port:I

.field private final queryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scheme:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/HttpUrl;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/HttpUrl;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/HttpUrl;

    .prologue
    iget v0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/HttpUrl;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getcom-android-okhttp-HttpUrl$Builder$ParseResultSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/okhttp/HttpUrl;->-com-android-okhttp-HttpUrl$Builder$ParseResultSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/okhttp/HttpUrl;->-com-android-okhttp-HttpUrl$Builder$ParseResultSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->values()[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_46

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_44

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_42

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_40

    :goto_32
    :try_start_32
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_3e

    :goto_3b
    sput-object v0, Lcom/android/okhttp/HttpUrl;->-com-android-okhttp-HttpUrl$Builder$ParseResultSwitchesValues:[I

    return-object v0

    :catch_3e
    move-exception v1

    goto :goto_3b

    :catch_40
    move-exception v1

    goto :goto_32

    :catch_42
    move-exception v1

    goto :goto_29

    :catch_44
    move-exception v1

    goto :goto_20

    :catch_46
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Ljava/lang/String;IILjava/lang/String;)I
    .registers 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiters"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 257
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    .line 256
    sput-object v0, Lcom/android/okhttp/HttpUrl;->HEX_DIGITS:[C

    .line 255
    return-void

    .line 257
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

.method private constructor <init>(Lcom/android/okhttp/HttpUrl$Builder;)V
    .registers 6
    .param p1, "builder"    # Lcom/android/okhttp/HttpUrl$Builder;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    .line 310
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    .line 311
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    .line 312
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl$Builder;->effectivePort()I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    .line 314
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    .line 315
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_4b

    .line 316
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 315
    :goto_36
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    .line 318
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 319
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 318
    :cond_42
    iput-object v1, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    .line 322
    return-void

    :cond_4b
    move-object v0, v1

    .line 317
    goto :goto_36
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/HttpUrl$Builder;Lcom/android/okhttp/HttpUrl;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/HttpUrl$Builder;
    .param p2, "-this1"    # Lcom/android/okhttp/HttpUrl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/HttpUrl;-><init>(Lcom/android/okhttp/HttpUrl$Builder;)V

    return-void
.end method

.method static canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 18
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "encodeSet"    # Ljava/lang/String;
    .param p4, "alreadyEncoded"    # Z
    .param p5, "strict"    # Z
    .param p6, "plusIsSpace"    # Z
    .param p7, "asciiOnly"    # Z

    .prologue
    .line 1580
    move v2, p1

    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_51

    .line 1581
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    .line 1582
    .local v9, "codePoint":I
    const/16 v1, 0x20

    if-lt v9, v1, :cond_f

    .line 1583
    const/16 v1, 0x7f

    if-ne v9, v1, :cond_28

    .line 1589
    :cond_f
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 1590
    .local v0, "out":Lcom/android/okhttp/okio/Buffer;
    invoke-virtual {v0, p0, p1, v2}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 1591
    invoke-static/range {v0 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 1593
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1584
    .end local v0    # "out":Lcom/android/okhttp/okio/Buffer;
    :cond_28
    const/16 v1, 0x80

    if-lt v9, v1, :cond_2e

    .line 1582
    if-nez p7, :cond_f

    .line 1585
    :cond_2e
    invoke-virtual {p3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_f

    .line 1586
    const/16 v1, 0x25

    if-ne v9, v1, :cond_45

    if-eqz p4, :cond_f

    if-eqz p5, :cond_45

    invoke-static {p0, v2, p2}, Lcom/android/okhttp/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1582
    if-nez v1, :cond_f

    .line 1587
    :cond_45
    const/16 v1, 0x2b

    if-ne v9, v1, :cond_4b

    .line 1582
    if-nez p6, :cond_f

    .line 1580
    :cond_4b
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    .line 1598
    .end local v9    # "codePoint":I
    :cond_51
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 14
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "encodeSet"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z
    .param p3, "strict"    # Z
    .param p4, "plusIsSpace"    # Z
    .param p5, "asciiOnly"    # Z

    .prologue
    .line 1638
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

.method static canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V
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

    .prologue
    const/16 v6, 0x25

    .line 1603
    const/4 v3, 0x0

    .line 1605
    .local v3, "utf8Buffer":Lcom/android/okhttp/okio/Buffer;
    move v2, p2

    .end local v3    # "utf8Buffer":Lcom/android/okhttp/okio/Buffer;
    .local v2, "i":I
    :goto_4
    if-ge v2, p3, :cond_8a

    .line 1606
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 1607
    .local v1, "codePoint":I
    if-eqz p5, :cond_22

    .line 1608
    const/16 v4, 0x9

    if-eq v1, v4, :cond_14

    const/16 v4, 0xa

    if-ne v1, v4, :cond_1a

    .line 1605
    :cond_14
    :goto_14
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1608
    :cond_1a
    const/16 v4, 0xc

    if-eq v1, v4, :cond_14

    const/16 v4, 0xd

    if-eq v1, v4, :cond_14

    .line 1610
    :cond_22
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_35

    if-eqz p7, :cond_35

    .line 1612
    if-eqz p5, :cond_31

    const-string/jumbo v4, "+"

    :goto_2d
    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    goto :goto_14

    :cond_31
    const-string/jumbo v4, "%2B"

    goto :goto_2d

    .line 1613
    :cond_35
    const/16 v4, 0x20

    if-lt v1, v4, :cond_3d

    .line 1614
    const/16 v4, 0x7f

    if-ne v1, v4, :cond_6b

    .line 1619
    :cond_3d
    if-nez v3, :cond_44

    .line 1620
    new-instance v3, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v3}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 1622
    :cond_44
    invoke-virtual {v3, v1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    .line 1623
    :goto_47
    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1624
    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 1625
    .local v0, "b":I
    invoke-virtual {p0, v6}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1626
    sget-object v4, Lcom/android/okhttp/HttpUrl;->HEX_DIGITS:[C

    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1627
    sget-object v4, Lcom/android/okhttp/HttpUrl;->HEX_DIGITS:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_47

    .line 1615
    .end local v0    # "b":I
    :cond_6b
    const/16 v4, 0x80

    if-lt v1, v4, :cond_71

    .line 1613
    if-nez p8, :cond_3d

    .line 1616
    :cond_71
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3d

    .line 1617
    if-ne v1, v6, :cond_86

    if-eqz p5, :cond_3d

    if-eqz p6, :cond_86

    invoke-static {p1, v2, p3}, Lcom/android/okhttp/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1613
    if-nez v4, :cond_3d

    .line 1631
    :cond_86
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_14

    .line 1634
    .end local v1    # "codePoint":I
    :cond_8a
    return-void
.end method

.method static decodeHexDigit(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1555
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 1556
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 1557
    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 1558
    :cond_25
    const/4 v0, -0x1

    return v0
.end method

.method public static defaultPort(Ljava/lang/String;)I
    .registers 2
    .param p0, "scheme"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string/jumbo v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 423
    const/16 v0, 0x50

    return v0

    .line 424
    :cond_c
    const-string/jumbo v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 425
    const/16 v0, 0x1bb

    return v0

    .line 427
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method private static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .registers 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiters"    # Ljava/lang/String;

    .prologue
    .line 1493
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_12

    .line 1494
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    return v0

    .line 1493
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1496
    :cond_12
    return p2
.end method

.method public static get(Ljava/net/URI;)Lcom/android/okhttp/HttpUrl;
    .registers 2
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    .line 646
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/net/URL;)Lcom/android/okhttp/HttpUrl;
    .registers 2
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 619
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method static getChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .registers 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 630
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    .line 631
    .local v0, "builder":Lcom/android/okhttp/HttpUrl$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object v1

    .line 632
    .local v1, "result":Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    invoke-static {}, Lcom/android/okhttp/HttpUrl;->-getcom-android-okhttp-HttpUrl$Builder$ParseResultSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5c

    .line 641
    :pswitch_17
    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 634
    :pswitch_3c
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    return-object v2

    .line 636
    :pswitch_41
    new-instance v2, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 632
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_41
        :pswitch_17
        :pswitch_17
        :pswitch_3c
    .end packed-switch
.end method

.method static namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 7
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, "namesAndValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_5
    if-ge v0, v2, :cond_2c

    .line 483
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 484
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 485
    .local v3, "value":Ljava/lang/String;
    if-lez v0, :cond_1c

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    :cond_1c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    if-eqz v3, :cond_29

    .line 488
    const/16 v4, 0x3d

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_29
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 492
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2c
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 609
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    .line 610
    .local v0, "builder":Lcom/android/okhttp/HttpUrl$Builder;
    invoke-virtual {v0, v2, p0}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object v1

    .line 611
    .local v1, "result":Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    if-ne v1, v3, :cond_12

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    :cond_12
    return-object v2
.end method

.method static pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_5
    if-ge v0, v1, :cond_18

    .line 447
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 450
    :cond_18
    return-void
.end method

.method static percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 8
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "plusIsSpace"    # Z

    .prologue
    .line 1512
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_24

    .line 1513
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1514
    .local v0, "c":C
    const/16 v3, 0x25

    if-eq v0, v3, :cond_11

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_21

    if-eqz p3, :cond_21

    .line 1516
    :cond_11
    new-instance v2, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v2}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 1517
    .local v2, "out":Lcom/android/okhttp/okio/Buffer;
    invoke-virtual {v2, p0, p1, v1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    .line 1518
    invoke-static {v2, p0, v1, p2, p3}, Lcom/android/okhttp/HttpUrl;->percentDecode(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IIZ)V

    .line 1519
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1512
    .end local v2    # "out":Lcom/android/okhttp/okio/Buffer;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1524
    .end local v0    # "c":C
    :cond_24
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "plusIsSpace"    # Z

    .prologue
    .line 1500
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private percentDecode(Ljava/util/List;Z)Ljava/util/List;
    .registers 8
    .param p2, "plusIsSpace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1504
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1505
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1506
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_24

    invoke-static {v1, p2}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    :goto_20
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_24
    move-object v3, v4

    goto :goto_20

    .line 1508
    .end local v1    # "s":Ljava/lang/String;
    :cond_26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method static percentDecode(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IIZ)V
    .registers 11
    .param p0, "out"    # Lcom/android/okhttp/okio/Buffer;
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "plusIsSpace"    # Z

    .prologue
    const/4 v5, -0x1

    .line 1529
    move v3, p2

    .local v3, "i":I
    :goto_2
    if-ge v3, p3, :cond_46

    .line 1530
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1531
    .local v0, "codePoint":I
    const/16 v4, 0x25

    if-ne v0, v4, :cond_36

    add-int/lit8 v4, v3, 0x2

    if-ge v4, p3, :cond_36

    .line 1532
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v1

    .line 1533
    .local v1, "d1":I
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v2

    .line 1534
    .local v2, "d2":I
    if-eq v1, v5, :cond_42

    if-eq v2, v5, :cond_42

    .line 1535
    shl-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1536
    add-int/lit8 v3, v3, 0x2

    .line 1529
    .end local v1    # "d1":I
    .end local v2    # "d2":I
    :goto_30
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    .line 1539
    :cond_36
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_42

    if-eqz p4, :cond_42

    .line 1540
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_30

    .line 1543
    :cond_42
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_30

    .line 1545
    .end local v0    # "codePoint":I
    :cond_46
    return-void
.end method

.method static percentEncoded(Ljava/lang/String;II)Z
    .registers 7
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 1548
    add-int/lit8 v1, p1, 0x2

    if-ge v1, p2, :cond_27

    .line 1549
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_27

    .line 1550
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v1

    if-eq v1, v3, :cond_27

    .line 1551
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v1

    if-eq v1, v3, :cond_27

    const/4 v0, 0x1

    .line 1548
    :cond_27
    return v0
.end method

.method static queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "encodedQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 501
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_42

    .line 503
    const/16 v4, 0x26

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 504
    .local v0, "ampersandOffset":I
    if-ne v0, v5, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 506
    :cond_19
    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 507
    .local v1, "equalsOffset":I
    if-eq v1, v5, :cond_23

    if-le v1, v0, :cond_31

    .line 508
    :cond_23
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :goto_2e
    add-int/lit8 v2, v0, 0x1

    goto :goto_7

    .line 511
    :cond_31
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 516
    .end local v0    # "ampersandOffset":I
    .end local v1    # "equalsOffset":I
    :cond_42
    return-object v3
.end method


# virtual methods
.method public encodedFragment()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 573
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    if-nez v1, :cond_6

    return-object v2

    .line 574
    :cond_6
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 575
    .local v0, "fragmentStart":I
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encodedPassword()Ljava/lang/String;
    .registers 6

    .prologue
    .line 383
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, ""

    return-object v2

    .line 384
    :cond_c
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v3, 0x3a

    iget-object v4, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 385
    .local v1, "passwordStart":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 386
    .local v0, "passwordEnd":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encodedPath()Ljava/lang/String;
    .registers 6

    .prologue
    .line 440
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v3, 0x2f

    iget-object v4, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 441
    .local v1, "pathStart":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, "?#"

    invoke-static {v2, v1, v3, v4}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 442
    .local v0, "pathEnd":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encodedPathSegments()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v5, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v6, 0x2f

    iget-object v7, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 454
    .local v2, "pathStart":I
    iget-object v5, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string/jumbo v7, "?#"

    invoke-static {v5, v2, v6, v7}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 455
    .local v1, "pathEnd":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v0, v2

    .local v0, "i":I
    :goto_25
    if-ge v0, v1, :cond_3d

    .line 457
    add-int/lit8 v0, v0, 0x1

    .line 458
    iget-object v5, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const-string/jumbo v6, "/"

    invoke-static {v5, v0, v1, v6}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v4

    .line 459
    .local v4, "segmentEnd":I
    iget-object v5, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    move v0, v4

    goto :goto_25

    .line 462
    .end local v4    # "segmentEnd":I
    :cond_3d
    return-object v3
.end method

.method public encodedQuery()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 475
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v2, :cond_6

    return-object v3

    .line 476
    :cond_6
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 477
    .local v1, "queryStart":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "#"

    invoke-static {v2, v3, v4, v5}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 478
    .local v0, "queryEnd":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encodedUsername()Ljava/lang/String;
    .registers 6

    .prologue
    .line 371
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, ""

    return-object v2

    .line 372
    :cond_c
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, 0x3

    .line 373
    .local v1, "usernameStart":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, ":@"

    invoke-static {v2, v1, v3, v4}, Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 374
    .local v0, "usernameEnd":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 650
    instance-of v0, p1, Lcom/android/okhttp/HttpUrl;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/android/okhttp/HttpUrl;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public fragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public host()Ljava/lang/String;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public isHttps()Z
    .registers 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newBuilder()Lcom/android/okhttp/HttpUrl$Builder;
    .registers 4

    .prologue
    .line 590
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    .line 591
    .local v0, "result":Lcom/android/okhttp/HttpUrl$Builder;
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 592
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 593
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 594
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 596
    iget v1, p0, Lcom/android/okhttp/HttpUrl;->port:I

    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_43

    iget v1, p0, Lcom/android/okhttp/HttpUrl;->port:I

    :goto_25
    iput v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 597
    iget-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 598
    iget-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 599
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 600
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedFragment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 601
    return-object v0

    .line 596
    :cond_43
    const/4 v1, -0x1

    goto :goto_25
.end method

.method public password()Ljava/lang/String;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public pathSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    return-object v0
.end method

.method public pathSize()I
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public port()I
    .registers 2

    .prologue
    .line 414
    iget v0, p0, Lcom/android/okhttp/HttpUrl;->port:I

    return v0
.end method

.method public query()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 520
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v1, :cond_6

    return-object v2

    .line 521
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/okhttp/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public queryParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 535
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v2, :cond_6

    return-object v3

    .line 536
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_d
    if-ge v0, v1, :cond_29

    .line 537
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 538
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 536
    :cond_26
    add-int/lit8 v0, v0, 0x2

    goto :goto_d

    .line 541
    :cond_29
    return-object v3
.end method

.method public queryParameterName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public queryParameterNames()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v3, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    return-object v3

    .line 546
    :cond_9
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 547
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_15
    if-ge v0, v2, :cond_25

    .line 548
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 547
    add-int/lit8 v0, v0, 0x2

    goto :goto_15

    .line 550
    :cond_25
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method

.method public queryParameterValue(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public queryParameterValues(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v3, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 555
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_15
    if-ge v0, v2, :cond_33

    .line 557
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 558
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_30
    add-int/lit8 v0, v0, 0x2

    goto :goto_15

    .line 561
    :cond_33
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public querySize()I
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public resolve(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .registers 5
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 584
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    .line 585
    .local v0, "builder":Lcom/android/okhttp/HttpUrl$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object v1

    .line 586
    .local v1, "result":Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    sget-object v2, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    if-ne v1, v2, :cond_12

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    :goto_11
    return-object v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public scheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public uri()Ljava/net/URI;
    .registers 7

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->newBuilder()Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/HttpUrl$Builder;->reencodeForUri()Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "uri":Ljava/lang/String;
    :try_start_c
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_11} :catch_12

    return-object v4

    .line 349
    :catch_12
    move-exception v0

    .line 352
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_13
    const-string/jumbo v4, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "stripped":Ljava/lang/String;
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_22

    move-result-object v4

    return-object v4

    .line 354
    .end local v2    # "stripped":Ljava/lang/String;
    :catch_22
    move-exception v1

    .line 355
    .local v1, "e1":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public url()Ljava/net/URL;
    .registers 4

    .prologue
    .line 327
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/android/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v1

    .line 328
    :catch_8
    move-exception v0

    .line 329
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public username()Ljava/lang/String;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl;->username:Ljava/lang/String;

    return-object v0
.end method
