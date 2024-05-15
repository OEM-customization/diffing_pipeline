.class final Lcom/android/okhttp/internal/framed/Hpack;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/Hpack$Reader;,
        Lcom/android/okhttp/internal/framed/Hpack$Writer;
    }
.end annotation


# static fields
.field private static final NAME_TO_FIRST_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/okhttp/okio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFIX_4_BITS:I = 0xf

.field private static final PREFIX_5_BITS:I = 0x1f

.field private static final PREFIX_6_BITS:I = 0x3f

.field private static final PREFIX_7_BITS:I = 0x7f

.field private static final STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/okhttp/internal/framed/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1()[Lcom/android/okhttp/internal/framed/Header;
    .registers 1

    sget-object v0, Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;
    .registers 2
    .param p0, "name"    # Lcom/android/okhttp/okio/ByteString;

    .prologue
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/Hpack;->checkLowercase(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 46
    const/16 v0, 0x3d

    new-array v0, v0, [Lcom/android/okhttp/internal/framed/Header;

    .line 47
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 48
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, "GET"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 49
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, "POST"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 50
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, "/"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 51
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, "/index.html"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 52
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, "http"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 53
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, "https"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 54
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, "200"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 55
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, "204"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 56
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, "206"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 57
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, "304"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 58
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, "400"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 59
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, "404"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 60
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    sget-object v2, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v3, "500"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 61
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "accept-charset"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 62
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "accept-encoding"

    const-string/jumbo v3, "gzip, deflate"

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 63
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "accept-language"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 64
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "accept-ranges"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 65
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "accept"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 66
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "access-control-allow-origin"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 67
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "age"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 68
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "allow"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 69
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "authorization"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 70
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "cache-control"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 71
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "content-disposition"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 72
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "content-encoding"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 73
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "content-language"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 74
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "content-length"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 75
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "content-location"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 76
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "content-range"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 77
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "content-type"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 78
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "cookie"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 79
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "date"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 80
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "etag"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 81
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "expect"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 82
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "expires"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 83
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "from"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 84
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "host"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 85
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "if-match"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 86
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "if-modified-since"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 87
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "if-none-match"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 88
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "if-range"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 89
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "if-unmodified-since"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 90
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "last-modified"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 91
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "link"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 92
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "location"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 93
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "max-forwards"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 94
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "proxy-authenticate"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 95
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "proxy-authorization"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 96
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "range"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 97
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "referer"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 98
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "refresh"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 99
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "retry-after"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 100
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "server"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 101
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "set-cookie"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 102
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "strict-transport-security"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 103
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "transfer-encoding"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 104
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "user-agent"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 105
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "vary"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 106
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "via"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 107
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    const-string/jumbo v2, "www-authenticate"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 46
    sput-object v0, Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;

    .line 357
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->nameToFirstIndex()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method private static checkLowercase(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;
    .registers 7
    .param p0, "name"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v2

    .local v2, "length":I
    :goto_5
    if-ge v1, v2, :cond_34

    .line 428
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v0

    .line 429
    .local v0, "c":B
    const/16 v3, 0x41

    if-lt v0, v3, :cond_31

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_31

    .line 430
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 427
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 433
    .end local v0    # "c":B
    :cond_34
    return-object p0
.end method

.method private static nameToFirstIndex()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/okhttp/okio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 361
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Lokio/ByteString;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    sget-object v2, Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    .line 362
    sget-object v2, Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 363
    sget-object v2, Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 366
    :cond_2a
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method
