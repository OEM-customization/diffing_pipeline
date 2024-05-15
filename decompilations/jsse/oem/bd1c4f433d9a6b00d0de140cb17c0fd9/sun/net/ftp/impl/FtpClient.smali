.class public Lsun/net/ftp/impl/FtpClient;
.super Lsun/net/ftp/FtpClient;
.source "FtpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/ftp/impl/FtpClient$1;,
        Lsun/net/ftp/impl/FtpClient$DefaultParser;,
        Lsun/net/ftp/impl/FtpClient$FtpFileIterator;,
        Lsun/net/ftp/impl/FtpClient$MLSxParser;
    }
.end annotation


# static fields
.field private static MDTMformats:[Ljava/lang/String;

.field private static dateFormats:[Ljava/text/SimpleDateFormat;

.field private static defaultConnectTimeout:I

.field private static defaultSoTimeout:I

.field private static encoding:Ljava/lang/String;

.field private static epsvPat:Ljava/util/regex/Pattern;

.field private static linkp:Ljava/util/regex/Pattern;

.field private static final logger:Lsun/util/logging/PlatformLogger;

.field private static pasvPat:Ljava/util/regex/Pattern;

.field private static patStrings:[Ljava/lang/String;

.field private static patternGroups:[[I

.field private static patterns:[Ljava/util/regex/Pattern;

.field private static transPat:Ljava/util/regex/Pattern;


# instance fields
.field private connectTimeout:I

.field private df:Ljava/text/DateFormat;

.field private in:Ljava/io/InputStream;

.field private lastFileName:Ljava/lang/String;

.field private lastReplyCode:Lsun/net/ftp/FtpReplyCode;

.field private lastTransSize:J

.field private loggedIn:Z

.field private mlsxParser:Lsun/net/ftp/FtpDirParser;

.field private oldSocket:Ljava/net/Socket;

.field private out:Ljava/io/PrintStream;

.field private parser:Lsun/net/ftp/FtpDirParser;

.field private final passiveMode:Z

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:I

.field private replyPending:Z

.field private restartOffset:J

.field private server:Ljava/net/Socket;

.field private serverAddr:Ljava/net/InetSocketAddress;

.field private serverResponse:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sslFact:Ljavax/net/ssl/SSLSocketFactory;

.field private type:Lsun/net/ftp/FtpClient$TransferType;

.field private useCrypto:Z

.field private welcomeMsg:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lsun/net/ftp/impl/FtpClient;)Ljava/text/DateFormat;
    .registers 2
    .param p0, "-this"    # Lsun/net/ftp/impl/FtpClient;

    .prologue
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->df:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lsun/net/ftp/impl/FtpClient;->linkp:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic -get2()[[I
    .registers 1

    sget-object v0, Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I

    return-object v0
.end method

.method static synthetic -get3()[Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic -get4(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Proxy;
    .registers 2
    .param p0, "-this"    # Lsun/net/ftp/impl/FtpClient;

    .prologue
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method static synthetic -get5(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Socket;
    .registers 2
    .param p0, "-this"    # Lsun/net/ftp/impl/FtpClient;

    .prologue
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 56
    const-string/jumbo v4, "sun.net.ftp.FtpClient"

    invoke-static {v4}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v4

    .line 55
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    .line 65
    const-string/jumbo v4, "ISO8859_1"

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    .line 90
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 92
    const-string/jumbo v5, "([\\-ld](?:[r\\-][w\\-][x\\-]){3})\\s*\\d+ (\\w+)\\s*(\\w+)\\s*(\\d+)\\s*([A-Z][a-z][a-z]\\s*\\d+)\\s*(\\d\\d:\\d\\d)\\s*(\\p{Print}*)"

    aput-object v5, v4, v7

    .line 94
    const-string/jumbo v5, "([\\-ld](?:[r\\-][w\\-][x\\-]){3})\\s*\\d+ (\\w+)\\s*(\\w+)\\s*(\\d+)\\s*([A-Z][a-z][a-z]\\s*\\d+)\\s*(\\d{4})\\s*(\\p{Print}*)"

    aput-object v5, v4, v8

    .line 96
    const-string/jumbo v5, "(\\d{2}/\\d{2}/\\d{4})\\s*(\\d{2}:\\d{2}[ap])\\s*((?:[0-9,]+)|(?:<DIR>))\\s*(\\p{Graph}*)"

    aput-object v5, v4, v11

    .line 98
    const-string/jumbo v5, "(\\d{2}-\\d{2}-\\d{2})\\s*(\\d{2}:\\d{2}[AP]M)\\s*((?:[0-9,]+)|(?:<DIR>))\\s*(\\p{Graph}*)"

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 90
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    .line 100
    const/4 v4, 0x4

    new-array v4, v4, [[I

    .line 103
    new-array v5, v9, [I

    fill-array-data v5, :array_f6

    aput-object v5, v4, v7

    .line 104
    new-array v5, v9, [I

    fill-array-data v5, :array_10a

    aput-object v5, v4, v8

    .line 105
    new-array v5, v9, [I

    fill-array-data v5, :array_11e

    aput-object v5, v4, v11

    .line 106
    new-array v5, v9, [I

    fill-array-data v5, :array_132

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 100
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I

    .line 108
    const-string/jumbo v4, "(\\p{Print}+) \\-\\> (\\p{Print}+)$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->linkp:Ljava/util/regex/Pattern;

    .line 112
    filled-new-array {v7, v7}, [I

    move-result-object v3

    .line 113
    .local v3, "vals":[I
    new-array v1, v8, [Ljava/lang/String;

    aput-object v10, v1, v7

    .line 116
    .local v1, "encs":[Ljava/lang/String;
    new-instance v4, Lsun/net/ftp/impl/FtpClient$1;

    invoke-direct {v4, v3, v1}, Lsun/net/ftp/impl/FtpClient$1;-><init>([I[Ljava/lang/String;)V

    .line 115
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 125
    aget v4, v3, v7

    if-nez v4, :cond_a4

    .line 126
    const/4 v4, -0x1

    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    .line 131
    :goto_70
    aget v4, v3, v8

    if-nez v4, :cond_a9

    .line 132
    const/4 v4, -0x1

    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    .line 137
    :goto_77
    aget-object v4, v1, v7

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    .line 139
    :try_start_7b
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-static {v4}, Lsun/net/ftp/impl/FtpClient;->isASCIISuperset(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_88

    .line 140
    const-string/jumbo v4, "ISO8859_1"

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_88} :catch_ae

    .line 146
    :cond_88
    :goto_88
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/util/regex/Pattern;

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    .line 147
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_90
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_b5

    .line 148
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    sget-object v5, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    aput-object v5, v4, v2

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_90

    .line 128
    .end local v2    # "i":I
    :cond_a4
    aget v4, v3, v7

    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    goto :goto_70

    .line 134
    :cond_a9
    aget v4, v3, v8

    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    goto :goto_77

    .line 142
    :catch_ae
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ISO8859_1"

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    goto :goto_88

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    :cond_b5
    sput-object v10, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    .line 554
    sput-object v10, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    .line 555
    sput-object v10, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    .line 1753
    new-array v4, v11, [Ljava/lang/String;

    .line 1754
    const-string/jumbo v5, "yyyyMMddHHmmss.SSS"

    aput-object v5, v4, v7

    .line 1755
    const-string/jumbo v5, "yyyyMMddHHmmss"

    aput-object v5, v4, v8

    .line 1753
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    .line 1757
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/text/SimpleDateFormat;

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    .line 1760
    const/4 v2, 0x0

    :goto_d1
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_f4

    .line 1761
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 1762
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    aget-object v4, v4, v2

    const-string/jumbo v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1760
    add-int/lit8 v2, v2, 0x1

    goto :goto_d1

    .line 51
    :cond_f4
    return-void

    .line 103
    nop

    :array_f6
    .array-data 4
        0x7
        0x4
        0x5
        0x6
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 104
    :array_10a
    .array-data 4
        0x7
        0x4
        0x5
        0x0
        0x6
        0x1
        0x2
        0x3
    .end array-data

    .line 105
    :array_11e
    .array-data 4
        0x4
        0x3
        0x1
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 106
    :array_132
    .array-data 4
        0x4
        0x3
        0x1
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 816
    invoke-direct {p0}, Lsun/net/ftp/FtpClient;-><init>()V

    .line 61
    iput v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    .line 62
    iput v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    .line 68
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    .line 69
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 70
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    .line 76
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 82
    iput-boolean v3, p0, Lsun/net/ftp/impl/FtpClient;->passiveMode:Z

    .line 83
    sget-object v0, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 85
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 109
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->df:Ljava/text/DateFormat;

    .line 368
    new-instance v0, Lsun/net/ftp/impl/FtpClient$DefaultParser;

    invoke-direct {v0, p0, v2}, Lsun/net/ftp/impl/FtpClient$DefaultParser;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$DefaultParser;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    .line 369
    new-instance v0, Lsun/net/ftp/impl/FtpClient$MLSxParser;

    invoke-direct {v0, p0, v2}, Lsun/net/ftp/impl/FtpClient$MLSxParser;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$MLSxParser;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->mlsxParser:Lsun/net/ftp/FtpDirParser;

    .line 817
    return-void
.end method

.method public static create()Lsun/net/ftp/FtpClient;
    .registers 1

    .prologue
    .line 825
    new-instance v0, Lsun/net/ftp/impl/FtpClient;

    invoke-direct {v0}, Lsun/net/ftp/impl/FtpClient;-><init>()V

    return-object v0
.end method

.method private createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 798
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v0, v1, :cond_d

    .line 799
    new-instance v0, Lsun/net/TelnetInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsun/net/TelnetInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 801
    :cond_d
    return-object p1
.end method

.method private createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 805
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v0, v1, :cond_d

    .line 806
    new-instance v0, Lsun/net/TelnetOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsun/net/TelnetOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0

    .line 808
    :cond_d
    return-object p1
.end method

.method private disconnect()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 977
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 978
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 980
    :cond_c
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 981
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 982
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;

    .line 983
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 984
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    .line 985
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 986
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 987
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 988
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 989
    return-void
.end method

.method private doConnect(Ljava/net/InetSocketAddress;I)Ljava/net/Socket;
    .registers 6
    .param p1, "dest"    # Ljava/net/InetSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 936
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_30

    .line 937
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_28

    .line 939
    new-instance v1, Lsun/net/ftp/impl/FtpClient$4;

    invoke-direct {v1, p0}, Lsun/net/ftp/impl/FtpClient$4;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    .line 938
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 955
    .local v0, "s":Ljava/net/Socket;
    :goto_19
    if-ltz p2, :cond_36

    .line 956
    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 968
    :goto_1e
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    if-ltz v1, :cond_4e

    .line 969
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 973
    :cond_27
    :goto_27
    return-object v0

    .line 946
    .end local v0    # "s":Ljava/net/Socket;
    :cond_28
    new-instance v0, Ljava/net/Socket;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_19

    .line 949
    .end local v0    # "s":Ljava/net/Socket;
    :cond_30
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_19

    .line 958
    :cond_36
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    if-ltz v1, :cond_40

    .line 959
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_1e

    .line 961
    :cond_40
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    if-lez v1, :cond_4a

    .line 962
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_1e

    .line 964
    :cond_4a
    invoke-virtual {v0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_1e

    .line 970
    :cond_4e
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    if-lez v1, :cond_27

    .line 971
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_27
.end method

.method private getResponseString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 482
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getResponseStrings()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    return-object v0
.end method

.method private getSecurityData()[B
    .registers 6

    .prologue
    const/16 v4, 0x9

    .line 1919
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v2

    .line 1920
    .local v2, "s":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ADAT="

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1921
    new-instance v0, Lsun/misc/BASE64Decoder;

    invoke-direct {v0}, Lsun/misc/BASE64Decoder;-><init>()V

    .line 1925
    .local v0, "decoder":Lsun/misc/BASE64Decoder;
    :try_start_19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x9

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_28} :catch_2a

    move-result-object v3

    return-object v3

    .line 1926
    :catch_2a
    move-exception v1

    .line 1930
    .end local v0    # "decoder":Lsun/misc/BASE64Decoder;
    :cond_2b
    const/4 v3, 0x0

    return-object v3
.end method

.method private getTransferName()V
    .registers 5

    .prologue
    .line 397
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    .line 398
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "response":Ljava/lang/String;
    const-string/jumbo v3, "unique file name:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 400
    .local v1, "i":I
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 401
    .local v0, "e":I
    if-ltz v1, :cond_1e

    .line 402
    add-int/lit8 v1, v1, 0x11

    .line 403
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    .line 405
    :cond_1e
    return-void
.end method

.method private getTransferSize()V
    .registers 7

    .prologue
    .line 373
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 380
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "response":Ljava/lang/String;
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    if-nez v3, :cond_15

    .line 382
    const-string/jumbo v3, "150 Opening .*\\((\\d+) bytes\\)."

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    .line 384
    :cond_15
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 385
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 386
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 389
    .end local v2    # "s":Ljava/lang/String;
    :cond_2c
    return-void
.end method

.method private static isASCIISuperset(Ljava/lang/String;)Z
    .registers 5
    .param p0, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 171
    const-string/jumbo v2, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-_.!~*\'();/?:@&=+$,"

    .line 175
    .local v2, "chkS":Ljava/lang/String;
    const/16 v3, 0x51

    new-array v1, v3, [B

    .local v1, "chkB":[B
    fill-array-data v1, :array_14

    .line 181
    invoke-virtual {v2, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 182
    .local v0, "b":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3

    .line 175
    nop

    :array_14
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x2dt
        0x5ft
        0x2et
        0x21t
        0x7et
        0x2at
        0x27t
        0x28t
        0x29t
        0x3bt
        0x2ft
        0x3ft
        0x3at
        0x40t
        0x26t
        0x3dt
        0x2bt
        0x24t
        0x2ct
    .end array-data
.end method

.method private issueCommand(Ljava/lang/String;)Z
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/net/ftp/FtpProtocolException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_f

    .line 523
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 525
    :cond_f
    iget-boolean v2, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    if-eqz v2, :cond_16

    .line 527
    :try_start_13
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;
    :try_end_16
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_13 .. :try_end_16} :catch_33

    .line 532
    :cond_16
    :goto_16
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    .line 534
    new-instance v1, Lsun/net/ftp/FtpProtocolException;

    const-string/jumbo v2, "Illegal FTP command"

    invoke-direct {v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    .line 535
    .local v1, "ex":Lsun/net/ftp/FtpProtocolException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Illegal carriage return"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lsun/net/ftp/FtpProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 536
    throw v1

    .line 528
    .end local v1    # "ex":Lsun/net/ftp/FtpProtocolException;
    :catch_33
    move-exception v0

    .local v0, "e":Lsun/net/ftp/FtpProtocolException;
    goto :goto_16

    .line 538
    .end local v0    # "e":Lsun/net/ftp/FtpProtocolException;
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->sendServer(Ljava/lang/String;)V

    .line 539
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    move-result v2

    return v2
.end method

.method private issueCommandCheck(Ljava/lang/String;)V
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 551
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0

    .line 553
    :cond_2c
    return-void
.end method

.method private openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    .registers 15
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 715
    :try_start_2
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->openPassiveDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_5
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v9

    return-object v9

    .line 716
    :catch_7
    move-exception v2

    .line 719
    .local v2, "e":Lsun/net/ftp/FtpProtocolException;
    invoke-virtual {v2}, Lsun/net/ftp/FtpProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "errmsg":Ljava/lang/String;
    const-string/jumbo v9, "PASV"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_21

    const-string/jumbo v9, "EPSV"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_21

    .line 721
    throw v2

    .line 729
    :cond_21
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    if-eqz v9, :cond_38

    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v9}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v9, v10, :cond_38

    .line 733
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    const-string/jumbo v10, "Passive mode failed"

    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 737
    :cond_38
    new-instance v8, Ljava/net/ServerSocket;

    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-direct {v8, v11, v12, v9}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 739
    .local v8, "portSocket":Ljava/net/ServerSocket;
    :try_start_43
    invoke-virtual {v8}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 740
    .local v6, "myAddress":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v9

    if-eqz v9, :cond_53

    .line 741
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 750
    :cond_53
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "EPRT |"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    instance-of v9, v6, Ljava/net/Inet6Address;

    if-eqz v9, :cond_cb

    const-string/jumbo v9, "2"

    :goto_66
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 751
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 750
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 751
    const-string/jumbo v10, "|"

    .line 750
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 751
    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v10

    .line 750
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 751
    const-string/jumbo v10, "|"

    .line 750
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 752
    .local v7, "portCmd":Ljava/lang/String;
    invoke-direct {p0, v7}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a1

    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_ff

    .line 754
    :cond_a1
    const-string/jumbo v7, "PORT "

    .line 755
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 758
    .local v0, "addr":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a9
    array-length v9, v0

    if-ge v5, v9, :cond_cf

    .line 759
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-byte v10, v0, v5

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 758
    add-int/lit8 v5, v5, 0x1

    goto :goto_a9

    .line 750
    .end local v0    # "addr":[B
    .end local v5    # "i":I
    .end local v7    # "portCmd":Ljava/lang/String;
    :cond_cb
    const-string/jumbo v9, "1"

    goto :goto_66

    .line 763
    .restart local v0    # "addr":[B
    .restart local v5    # "i":I
    .restart local v7    # "portCmd":Ljava/lang/String;
    :cond_cf
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v10

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 764
    invoke-direct {p0, v7}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 765
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 769
    .end local v0    # "addr":[B
    .end local v5    # "i":I
    :cond_ff
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    if-ltz v9, :cond_130

    .line 770
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    invoke-virtual {v8, v9}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 776
    :cond_108
    :goto_108
    invoke-virtual {v8}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 777
    .local v1, "clientSocket":Ljava/net/Socket;
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    if-ltz v9, :cond_13f

    .line 778
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    invoke-virtual {v1, v9}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_115
    .catchall {:try_start_43 .. :try_end_115} :catchall_13a

    .line 785
    :cond_115
    :goto_115
    invoke-virtual {v8}, Ljava/net/ServerSocket;->close()V

    .line 787
    iget-boolean v9, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-eqz v9, :cond_12f

    .line 789
    :try_start_11c
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v10, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v9, v1, v10, v11, v12}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_12e} :catch_149

    move-result-object v1

    .line 794
    :cond_12f
    return-object v1

    .line 772
    .end local v1    # "clientSocket":Ljava/net/Socket;
    :cond_130
    :try_start_130
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    if-lez v9, :cond_108

    .line 773
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    invoke-virtual {v8, v9}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_139
    .catchall {:try_start_130 .. :try_end_139} :catchall_13a

    goto :goto_108

    .line 784
    .end local v6    # "myAddress":Ljava/net/InetAddress;
    .end local v7    # "portCmd":Ljava/lang/String;
    :catchall_13a
    move-exception v9

    .line 785
    invoke-virtual {v8}, Ljava/net/ServerSocket;->close()V

    .line 784
    throw v9

    .line 780
    .restart local v1    # "clientSocket":Ljava/net/Socket;
    .restart local v6    # "myAddress":Ljava/net/InetAddress;
    .restart local v7    # "portCmd":Ljava/lang/String;
    :cond_13f
    :try_start_13f
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    if-lez v9, :cond_115

    .line 781
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    invoke-virtual {v1, v9}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_148
    .catchall {:try_start_13f .. :try_end_148} :catchall_13a

    goto :goto_115

    .line 790
    :catch_149
    move-exception v4

    .line 791
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private openPassiveDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    .registers 15
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 567
    const/4 v1, 0x0

    .line 580
    .local v1, "dest":Ljava/net/InetSocketAddress;
    const-string/jumbo v9, "EPSV ALL"

    invoke-direct {p0, v9}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d1

    .line 582
    const-string/jumbo v9, "EPSV"

    invoke-direct {p0, v9}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 583
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v8

    .line 591
    .local v8, "serverAnswer":Ljava/lang/String;
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    if-nez v9, :cond_23

    .line 592
    const-string/jumbo v9, "^229 .* \\(\\|\\|\\|(\\d+)\\|\\)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    .line 594
    :cond_23
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 595
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_49

    .line 596
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "EPSV failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 599
    :cond_49
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 600
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 601
    .local v4, "port":I
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 602
    .local v0, "add":Ljava/net/InetAddress;
    if-eqz v0, :cond_c6

    .line 603
    new-instance v1, Ljava/net/InetSocketAddress;

    .end local v1    # "dest":Ljava/net/InetSocketAddress;
    invoke-direct {v1, v0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 643
    .end local v0    # "add":Ljava/net/InetAddress;
    .local v1, "dest":Ljava/net/InetSocketAddress;
    :goto_5e
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    if-eqz v9, :cond_140

    .line 644
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v9}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v9, v10, :cond_137

    .line 646
    new-instance v9, Lsun/net/ftp/impl/FtpClient$2;

    invoke-direct {v9, p0}, Lsun/net/ftp/impl/FtpClient$2;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    .line 645
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Socket;

    .line 660
    .local v6, "s":Ljava/net/Socket;
    :goto_77
    new-instance v9, Lsun/net/ftp/impl/FtpClient$3;

    invoke-direct {v9, p0}, Lsun/net/ftp/impl/FtpClient$3;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    .line 659
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 669
    .local v7, "serverAddress":Ljava/net/InetAddress;
    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v7, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v9}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 670
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    if-ltz v9, :cond_147

    .line 671
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    invoke-virtual {v6, v1, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 679
    :goto_93
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    if-ltz v9, :cond_157

    .line 680
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    invoke-virtual {v6, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 684
    :cond_9c
    :goto_9c
    iget-boolean v9, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-eqz v9, :cond_af

    .line 686
    :try_start_a0
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v9, v6, v10, v11, v12}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_ae} :catch_162

    move-result-object v6

    .line 691
    :cond_af
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1a3

    .line 692
    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    .line 693
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    move-result-object v9

    sget-object v10, Lsun/net/ftp/FtpReplyCode;->FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

    if-ne v9, v10, :cond_17d

    .line 695
    new-instance v9, Ljava/io/FileNotFoundException;

    invoke-direct {v9, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 609
    .end local v6    # "s":Ljava/net/Socket;
    .end local v7    # "serverAddress":Ljava/net/InetAddress;
    .restart local v0    # "add":Ljava/net/InetAddress;
    .local v1, "dest":Ljava/net/InetSocketAddress;
    :cond_c6
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    .local v1, "dest":Ljava/net/InetSocketAddress;
    goto :goto_5e

    .line 613
    .end local v0    # "add":Ljava/net/InetAddress;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "port":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v8    # "serverAnswer":Ljava/lang/String;
    .local v1, "dest":Ljava/net/InetSocketAddress;
    :cond_d1
    const-string/jumbo v9, "PASV"

    invoke-direct {p0, v9}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 614
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v8

    .line 628
    .restart local v8    # "serverAnswer":Ljava/lang/String;
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    if-nez v9, :cond_e8

    .line 629
    const-string/jumbo v9, "227 .* \\(?(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)?"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    .line 631
    :cond_e8
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 632
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_10e

    .line 633
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "PASV failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 636
    :cond_10e
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    shl-int/lit8 v10, v10, 0x8

    add-int v4, v9, v10

    .line 638
    .restart local v4    # "port":I
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2c

    const/16 v11, 0x2e

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 639
    .restart local v5    # "s":Ljava/lang/String;
    new-instance v1, Ljava/net/InetSocketAddress;

    .end local v1    # "dest":Ljava/net/InetSocketAddress;
    invoke-direct {v1, v5, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .local v1, "dest":Ljava/net/InetSocketAddress;
    goto/16 :goto_5e

    .line 653
    :cond_137
    new-instance v6, Ljava/net/Socket;

    sget-object v9, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v6, v9}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .restart local v6    # "s":Ljava/net/Socket;
    goto/16 :goto_77

    .line 656
    .end local v6    # "s":Ljava/net/Socket;
    :cond_140
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    .restart local v6    # "s":Ljava/net/Socket;
    goto/16 :goto_77

    .line 673
    .restart local v7    # "serverAddress":Ljava/net/InetAddress;
    :cond_147
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    if-lez v9, :cond_152

    .line 674
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    invoke-virtual {v6, v1, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto/16 :goto_93

    .line 676
    :cond_152
    invoke-virtual {v6, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto/16 :goto_93

    .line 681
    :cond_157
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    if-lez v9, :cond_9c

    .line 682
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    invoke-virtual {v6, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    goto/16 :goto_9c

    .line 687
    :catch_162
    move-exception v2

    .line 688
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t open secure data channel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 697
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_17d
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v9

    .line 699
    :cond_1a3
    return-object v6
.end method

.method private readReply()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 497
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readServerResponse()I

    move-result v0

    invoke-static {v0}, Lsun/net/ftp/FtpReplyCode;->find(I)Lsun/net/ftp/FtpReplyCode;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 499
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositivePreliminary()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 500
    iput-boolean v2, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    .line 501
    return v2

    .line 503
    :cond_16
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositiveCompletion()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositiveIntermediate()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 504
    :cond_26
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    if-ne v0, v1, :cond_2f

    .line 505
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferName()V

    .line 507
    :cond_2f
    return v2

    .line 509
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method private readServerResponse()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v14, 0xa

    const/4 v13, 0x4

    const/4 v12, -0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 412
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v7, 0x20

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 414
    .local v5, "replyBuf":Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .line 418
    .local v2, "continuingCode":I
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v7, v10}, Ljava/util/Vector;->setSize(I)V

    .line 420
    :cond_13
    :goto_13
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    if-eq v0, v12, :cond_32

    .line 421
    const/16 v7, 0xd

    if-ne v0, v7, :cond_2c

    .line 422
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v14, :cond_2c

    .line 423
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 426
    :cond_2c
    int-to-char v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 427
    if-ne v0, v14, :cond_13

    .line 431
    :cond_32
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 432
    .local v6, "response":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 433
    sget-object v7, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    sget-object v8, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 434
    sget-object v7, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Server ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] --> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 437
    :cond_69
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_89

    .line 438
    const/4 v1, -0x1

    .line 450
    .local v1, "code":I
    :goto_70
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 451
    if-eq v2, v12, :cond_97

    .line 453
    if-ne v1, v2, :cond_13

    .line 454
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v13, :cond_87

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_13

    .line 458
    :cond_87
    const/4 v2, -0x1

    .line 469
    :cond_88
    return v1

    .line 441
    .end local v1    # "code":I
    :cond_89
    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_8b
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_92} :catch_94
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_8b .. :try_end_92} :catch_a8

    move-result v1

    .restart local v1    # "code":I
    goto :goto_70

    .line 442
    .end local v1    # "code":I
    :catch_94
    move-exception v3

    .line 443
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    .restart local v1    # "code":I
    goto :goto_70

    .line 461
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_97
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v13, :cond_88

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_88

    .line 462
    move v2, v1

    .line 463
    goto/16 :goto_13

    .line 444
    .end local v1    # "code":I
    :catch_a8
    move-exception v4

    .local v4, "e":Ljava/lang/StringIndexOutOfBoundsException;
    goto/16 :goto_13
.end method

.method private sendSecurityData([B)Z
    .registers 6
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/net/ftp/FtpProtocolException;
        }
    .end annotation

    .prologue
    .line 1913
    new-instance v0, Lsun/misc/BASE64Encoder;

    invoke-direct {v0}, Lsun/misc/BASE64Encoder;-><init>()V

    .line 1914
    .local v0, "encoder":Lsun/misc/BASE64Encoder;
    invoke-virtual {v0, p1}, Lsun/misc/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 1915
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ADAT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private sendServer(Ljava/lang/String;)V
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 474
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 475
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 476
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Server ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] <-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 478
    :cond_35
    return-void
.end method

.method private tryConnect(Ljava/net/InetSocketAddress;I)V
    .registers 8
    .param p1, "dest"    # Ljava/net/InetSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 921
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 922
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V

    .line 924
    :cond_9
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->doConnect(Ljava/net/InetSocketAddress;I)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 926
    :try_start_f
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 927
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v4, 0x1

    .line 926
    invoke-direct {v1, v2, v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_24} :catch_32

    .line 931
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 932
    return-void

    .line 928
    :catch_32
    move-exception v0

    .line 929
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "encoding not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private tryLogin(Ljava/lang/String;[C)V
    .registers 5
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

    if-ne v0, v1, :cond_3d

    .line 1035
    if-eqz p2, :cond_3d

    array-length v0, p2

    if-lez v0, :cond_3d

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PASS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1039
    :cond_3d
    return-void
.end method


# virtual methods
.method public abort()Lsun/net/ftp/FtpClient;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1564
    const-string/jumbo v0, "ABOR"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1583
    return-object p0
.end method

.method public allocate(J)Lsun/net/ftp/FtpClient;
    .registers 6
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ALLO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2135
    return-object p0
.end method

.method public appendFile(Ljava/lang/String;Ljava/io/InputStream;)Lsun/net/ftp/FtpClient;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1387
    const/16 v2, 0x5dc

    .line 1388
    .local v2, "mtu":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "APPE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v4

    .line 1389
    .local v4, "s":Ljava/net/Socket;
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    .line 1390
    .local v3, "remote":Ljava/io/OutputStream;
    const/16 v5, 0x3a98

    new-array v0, v5, [B

    .line 1392
    .local v0, "buf":[B
    :cond_27
    :goto_27
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    if-ltz v1, :cond_33

    .line 1393
    if-lez v1, :cond_27

    .line 1394
    invoke-virtual {v3, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_27

    .line 1397
    :cond_33
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1398
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    move-result-object v5

    return-object v5
.end method

.method public changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "remoteDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1156
    if-eqz p1, :cond_b

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1157
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "directory can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CWD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1161
    return-object p0
.end method

.method public changeToParentDirectory()Lsun/net/ftp/FtpClient;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1171
    const-string/jumbo v0, "CDUP"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1172
    return-object p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1129
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1131
    :try_start_6
    const-string/jumbo v1, "QUIT"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z
    :try_end_c
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_6 .. :try_end_c} :catch_13

    .line 1134
    :goto_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1136
    :cond_f
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V

    .line 1137
    return-void

    .line 1132
    :catch_13
    move-exception v0

    .local v0, "e":Lsun/net/ftp/FtpProtocolException;
    goto :goto_c
.end method

.method public completePending()Lsun/net/ftp/FtpClient;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1620
    :cond_0
    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    if-eqz v0, :cond_19

    .line 1621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    .line 1622
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1623
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0

    .line 1626
    :cond_19
    return-object p0
.end method

.method public connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    .registers 3
    .param p1, "dest"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1005
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lsun/net/ftp/impl/FtpClient;->connect(Ljava/net/SocketAddress;I)Lsun/net/ftp/FtpClient;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;I)Lsun/net/ftp/FtpClient;
    .registers 6
    .param p1, "dest"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1015
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_d

    .line 1016
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1018
    :cond_d
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1    # "dest":Ljava/net/SocketAddress;
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    .line 1019
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0, p2}, Lsun/net/ftp/impl/FtpClient;->tryConnect(Ljava/net/InetSocketAddress;I)V

    .line 1020
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1021
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Welcome message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1022
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v2

    .line 1021
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 1021
    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0

    .line 1024
    :cond_3c
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 1025
    return-object p0
.end method

.method public deleteFile(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DELE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1424
    return-object p0
.end method

.method public enablePassiveMode(Z)Lsun/net/ftp/FtpClient;
    .registers 2
    .param p1, "passive"    # Z

    .prologue
    .line 841
    return-object p0
.end method

.method public endSecureSession()Lsun/net/ftp/FtpClient;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2104
    iget-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-nez v1, :cond_5

    .line 2105
    return-object p0

    .line 2108
    :cond_5
    const-string/jumbo v1, "CCC"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2109
    const-string/jumbo v1, "PROT C"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 2112
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 2113
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    .line 2115
    :try_start_1b
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2116
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v4, 0x1

    .line 2115
    invoke-direct {v1, v2, v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_30} :catch_3e

    .line 2120
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 2122
    return-object p0

    .line 2117
    :catch_3e
    move-exception v0

    .line 2118
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "encoding not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 873
    iget v0, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    return v0
.end method

.method public getFeatures()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1544
    .local v0, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "FEAT"

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1545
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    move-result-object v2

    .line 1548
    .local v2, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_10
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2f

    .line 1549
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1551
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1548
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1553
    .end local v3    # "s":Ljava/lang/String;
    :cond_2f
    return-object v0
.end method

.method public getFile(Ljava/lang/String;Ljava/io/OutputStream;)Lsun/net/ftp/FtpClient;
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3a98

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 1231
    const/16 v2, 0x5dc

    .line 1232
    .local v2, "mtu":I
    iget-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_65

    .line 1235
    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "REST "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_59

    move-result-object v4

    .line 1237
    .local v4, "s":Ljava/net/Socket;
    iput-wide v10, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RETR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1240
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1241
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 1242
    .local v3, "remote":Ljava/io/InputStream;
    new-array v0, v9, [B

    .line 1244
    .local v0, "buf":[B
    :cond_4d
    :goto_4d
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    if-ltz v1, :cond_5d

    .line 1245
    if-lez v1, :cond_4d

    .line 1246
    invoke-virtual {p2, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4d

    .line 1236
    .end local v0    # "buf":[B
    .end local v1    # "l":I
    .end local v3    # "remote":Ljava/io/InputStream;
    .end local v4    # "s":Ljava/net/Socket;
    :catchall_59
    move-exception v5

    .line 1237
    iput-wide v10, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1236
    throw v5

    .line 1249
    .restart local v0    # "buf":[B
    .restart local v1    # "l":I
    .restart local v3    # "remote":Ljava/io/InputStream;
    .restart local v4    # "s":Ljava/net/Socket;
    :cond_5d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1263
    :goto_60
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    move-result-object v5

    return-object v5

    .line 1251
    .end local v0    # "buf":[B
    .end local v1    # "l":I
    .end local v3    # "remote":Ljava/io/InputStream;
    .end local v4    # "s":Ljava/net/Socket;
    :cond_65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RETR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v4

    .line 1252
    .restart local v4    # "s":Ljava/net/Socket;
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1253
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 1254
    .restart local v3    # "remote":Ljava/io/InputStream;
    new-array v0, v9, [B

    .line 1256
    .restart local v0    # "buf":[B
    :cond_8a
    :goto_8a
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .restart local v1    # "l":I
    if-ltz v1, :cond_96

    .line 1257
    if-lez v1, :cond_8a

    .line 1258
    invoke-virtual {p2, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_8a

    .line 1261
    :cond_96
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_60
.end method

.method public getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1279
    iget-wide v2, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_4f

    .line 1281
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "REST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_28

    move-result-object v0

    .line 1283
    .local v0, "s":Ljava/net/Socket;
    iput-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1285
    if-nez v0, :cond_2c

    .line 1286
    return-object v4

    .line 1282
    .end local v0    # "s":Ljava/net/Socket;
    :catchall_28
    move-exception v1

    .line 1283
    iput-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1282
    throw v1

    .line 1288
    .restart local v0    # "s":Ljava/net/Socket;
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RETR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1289
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1290
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1293
    .end local v0    # "s":Ljava/net/Socket;
    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RETR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 1294
    .restart local v0    # "s":Ljava/net/Socket;
    if-nez v0, :cond_6a

    .line 1295
    return-object v4

    .line 1297
    :cond_6a
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1298
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public getHelp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HELP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2202
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    move-result-object v1

    .line 2203
    .local v1, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    .line 2205
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2209
    :cond_2f
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2210
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_35
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4e

    .line 2211
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2210
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 2213
    :cond_4e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getLastFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2039
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified(Ljava/lang/String;)Ljava/util/Date;
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1779
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MDTM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1780
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v5, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    if-ne v4, v5, :cond_3c

    .line 1781
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1782
    .local v3, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1783
    .local v0, "d":Ljava/util/Date;
    sget-object v5, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    const/4 v4, 0x0

    array-length v6, v5

    .end local v0    # "d":Ljava/util/Date;
    :goto_2c
    if-ge v4, v6, :cond_3c

    aget-object v1, v5, v4

    .line 1785
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_30
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_33
    .catch Ljava/text/ParseException; {:try_start_30 .. :try_end_33} :catch_37

    move-result-object v0

    .line 1788
    :goto_34
    if-eqz v0, :cond_39

    .line 1789
    return-object v0

    .line 1786
    :catch_37
    move-exception v2

    .local v2, "ex":Ljava/text/ParseException;
    goto :goto_34

    .line 1783
    .end local v2    # "ex":Ljava/text/ParseException;
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 1793
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "s":Ljava/lang/String;
    :cond_3c
    return-object v7
.end method

.method public getLastReplyCode()Lsun/net/ftp/FtpReplyCode;
    .registers 2

    .prologue
    .line 1996
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    return-object v0
.end method

.method public getLastResponseString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2006
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2007
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    if-eqz v3, :cond_21

    .line 2008
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2009
    .local v0, "l":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 2010
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 2014
    .end local v0    # "l":Ljava/lang/String;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_21
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getLastTransferSize()J
    .registers 3

    .prologue
    .line 2026
    iget-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    return-wide v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .registers 2

    .prologue
    .line 911
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 895
    iget v0, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    return v0
.end method

.method public getServerAddress()Ljava/net/SocketAddress;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1001
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    goto :goto_5
.end method

.method public getSize(Ljava/lang/String;)J
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1742
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    .line 1743
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "path can\'t be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1745
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SIZE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1746
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    if-ne v1, v2, :cond_42

    .line 1747
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 1748
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1749
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 1751
    .end local v0    # "s":Ljava/lang/String;
    :cond_42
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1481
    if-nez p1, :cond_26

    const-string/jumbo v3, "STAT"

    :goto_5
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1506
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    move-result-object v1

    .line 1507
    .local v1, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1508
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_12
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3b

    .line 1509
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1508
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1481
    .end local v0    # "i":I
    .end local v1    # "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "STAT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 1511
    .restart local v0    # "i":I
    .restart local v1    # "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSystem()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2163
    const-string/jumbo v1, "SYST"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2167
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 2169
    .local v0, "resp":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getWelcomeMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1987
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkingDirectory()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1184
    const-string/jumbo v1, "PWD"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1190
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, "answ":Ljava/lang/String;
    const-string/jumbo v1, "257"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1192
    const/4 v1, 0x0

    return-object v1

    .line 1194
    :cond_15
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 997
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isLoggedIn()Z
    .registers 2

    .prologue
    .line 1145
    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    return v0
.end method

.method public isPassiveModeEnabled()Z
    .registers 2

    .prologue
    .line 850
    const/4 v0, 0x1

    return v0
.end method

.method public list(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1697
    if-nez p1, :cond_15

    const-string/jumbo v1, "LIST"

    :goto_6
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 1698
    .local v0, "s":Ljava/net/Socket;
    if-eqz v0, :cond_2a

    .line 1699
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1697
    .end local v0    # "s":Ljava/net/Socket;
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LIST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1701
    .restart local v0    # "s":Ljava/net/Socket;
    :cond_2a
    return-object v3
.end method

.method public listFiles(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lsun/net/ftp/FtpDirEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1889
    const/4 v1, 0x0

    .line 1890
    .local v1, "s":Ljava/net/Socket;
    const/4 v2, 0x0

    .line 1892
    .local v2, "sin":Ljava/io/BufferedReader;
    if-nez p1, :cond_24

    :try_start_5
    const-string/jumbo v3, "MLSD"

    :goto_8
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_b
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_5 .. :try_end_b} :catch_70

    move-result-object v1

    .line 1898
    .end local v1    # "s":Ljava/net/Socket;
    :goto_c
    if-eqz v1, :cond_39

    .line 1899
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2    # "sin":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1900
    .local v2, "sin":Ljava/io/BufferedReader;
    new-instance v3, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;

    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->mlsxParser:Lsun/net/ftp/FtpDirParser;

    invoke-direct {v3, p0, v4, v2}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/FtpDirParser;Ljava/io/BufferedReader;)V

    return-object v3

    .line 1892
    .restart local v1    # "s":Ljava/net/Socket;
    .local v2, "sin":Ljava/io/BufferedReader;
    :cond_24
    :try_start_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MLSD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_37
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_24 .. :try_end_37} :catch_70

    move-result-object v3

    goto :goto_8

    .line 1902
    .end local v1    # "s":Ljava/net/Socket;
    :cond_39
    if-nez p1, :cond_5a

    const-string/jumbo v3, "LIST"

    :goto_3e
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    .line 1903
    .local v1, "s":Ljava/net/Socket;
    if-eqz v1, :cond_6f

    .line 1904
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2    # "sin":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1905
    .local v2, "sin":Ljava/io/BufferedReader;
    new-instance v3, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;

    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    invoke-direct {v3, p0, v4, v2}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/FtpDirParser;Ljava/io/BufferedReader;)V

    return-object v3

    .line 1902
    .end local v1    # "s":Ljava/net/Socket;
    .local v2, "sin":Ljava/io/BufferedReader;
    :cond_5a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LIST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3e

    .line 1908
    .restart local v1    # "s":Ljava/net/Socket;
    :cond_6f
    return-object v5

    .line 1893
    .local v1, "s":Ljava/net/Socket;
    :catch_70
    move-exception v0

    .local v0, "FtpException":Lsun/net/ftp/FtpProtocolException;
    goto :goto_c
.end method

.method public login(Ljava/lang/String;[C)Lsun/net/ftp/FtpClient;
    .registers 9
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 1050
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_12

    .line 1051
    new-instance v3, Lsun/net/ftp/FtpProtocolException;

    const-string/jumbo v4, "Not connected yet"

    sget-object v5, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v3, v4, v5}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v3

    .line 1053
    :cond_12
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_23

    .line 1054
    :cond_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "User name can\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1056
    :cond_23
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->tryLogin(Ljava/lang/String;[C)V

    .line 1061
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1062
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_57

    .line 1063
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1064
    .local v1, "l":Ljava/lang/String;
    if-eqz v1, :cond_54

    .line 1065
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_51

    const-string/jumbo v3, "230"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1067
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1069
    :cond_51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1062
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1072
    .end local v1    # "l":Ljava/lang/String;
    :cond_57
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 1073
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1074
    return-object p0
.end method

.method public login(Ljava/lang/String;[CLjava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 10
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 1089
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_12

    .line 1090
    new-instance v3, Lsun/net/ftp/FtpProtocolException;

    const-string/jumbo v4, "Not connected yet"

    sget-object v5, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v3, v4, v5}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v3

    .line 1092
    :cond_12
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_23

    .line 1093
    :cond_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "User name can\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1095
    :cond_23
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->tryLogin(Ljava/lang/String;[C)V

    .line 1100
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v4, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

    if-ne v3, v4, :cond_43

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACCT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1106
    :cond_43
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1107
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    if-eqz v3, :cond_77

    .line 1108
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_52
    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1109
    .local v0, "l":Ljava/lang/String;
    if-eqz v0, :cond_52

    .line 1110
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_73

    const-string/jumbo v3, "230"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 1112
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1114
    :cond_73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 1118
    .end local v0    # "l":Ljava/lang/String;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_77
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 1119
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1120
    return-object p0
.end method

.method public makeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MKD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1437
    return-object p0
.end method

.method public nameList(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1721
    if-nez p1, :cond_15

    const-string/jumbo v1, "NLST"

    :goto_6
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 1722
    .local v0, "s":Ljava/net/Socket;
    if-eqz v0, :cond_2a

    .line 1723
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1721
    .end local v0    # "s":Ljava/net/Socket;
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NLST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1725
    .restart local v0    # "s":Ljava/net/Socket;
    :cond_2a
    return-object v3
.end method

.method public noop()Lsun/net/ftp/FtpClient;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1461
    const-string/jumbo v0, "NOOP"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1462
    return-object p0
.end method

.method public putFile(Ljava/lang/String;Ljava/io/InputStream;Z)Lsun/net/ftp/FtpClient;
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .param p3, "unique"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1357
    if-eqz p3, :cond_3b

    const-string/jumbo v1, "STOU "

    .line 1358
    .local v1, "cmd":Ljava/lang/String;
    :goto_6
    const/16 v3, 0x5dc

    .line 1359
    .local v3, "mtu":I
    iget-object v6, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v7, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v6, v7, :cond_42

    .line 1360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v5

    .line 1361
    .local v5, "s":Ljava/net/Socket;
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {p0, v6}, Lsun/net/ftp/impl/FtpClient;->createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v4

    .line 1362
    .local v4, "remote":Ljava/io/OutputStream;
    const/16 v6, 0x3a98

    new-array v0, v6, [B

    .line 1364
    .local v0, "buf":[B
    :cond_2f
    :goto_2f
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "l":I
    if-ltz v2, :cond_3f

    .line 1365
    if-lez v2, :cond_2f

    .line 1366
    invoke-virtual {v4, v0, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2f

    .line 1357
    .end local v0    # "buf":[B
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "l":I
    .end local v3    # "mtu":I
    .end local v4    # "remote":Ljava/io/OutputStream;
    .end local v5    # "s":Ljava/net/Socket;
    :cond_3b
    const-string/jumbo v1, "STOR "

    .restart local v1    # "cmd":Ljava/lang/String;
    goto :goto_6

    .line 1369
    .restart local v0    # "buf":[B
    .restart local v2    # "l":I
    .restart local v3    # "mtu":I
    .restart local v4    # "remote":Ljava/io/OutputStream;
    .restart local v5    # "s":Ljava/net/Socket;
    :cond_3f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1371
    .end local v0    # "buf":[B
    .end local v2    # "l":I
    .end local v4    # "remote":Ljava/io/OutputStream;
    .end local v5    # "s":Ljava/net/Socket;
    :cond_42
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    move-result-object v6

    return-object v6
.end method

.method public putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unique"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1329
    if-eqz p2, :cond_1e

    const-string/jumbo v1, "STOU "

    .line 1330
    .local v1, "cmd":Ljava/lang/String;
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v2

    .line 1331
    .local v2, "s":Ljava/net/Socket;
    if-nez v2, :cond_22

    .line 1332
    return-object v4

    .line 1329
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "s":Ljava/net/Socket;
    :cond_1e
    const-string/jumbo v1, "STOR "

    .restart local v1    # "cmd":Ljava/lang/String;
    goto :goto_6

    .line 1334
    .restart local v2    # "s":Ljava/net/Socket;
    :cond_22
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v4, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v3, v4, :cond_33

    const/4 v0, 0x1

    .line 1335
    .local v0, "bm":Z
    :goto_29
    new-instance v3, Lsun/net/TelnetOutputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lsun/net/TelnetOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v3

    .line 1334
    .end local v0    # "bm":Z
    :cond_33
    const/4 v0, 0x0

    .restart local v0    # "bm":Z
    goto :goto_29
.end method

.method public reInit()Lsun/net/ftp/FtpClient;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1635
    const-string/jumbo v2, "REIN"

    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1636
    iput-boolean v6, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1637
    iget-boolean v2, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-eqz v2, :cond_47

    .line 1638
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    instance-of v2, v2, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_47

    .line 1639
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 1640
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 1642
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 1643
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    .line 1645
    :try_start_25
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1646
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v5, 0x1

    .line 1645
    invoke-direct {v2, v3, v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_3a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_3a} :catch_4a

    .line 1650
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 1653
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_47
    iput-boolean v6, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 1654
    return-object p0

    .line 1647
    .restart local v1    # "session":Ljavax/net/ssl/SSLSession;
    :catch_4a
    move-exception v0

    .line 1648
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "encoding not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public removeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RMD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1451
    return-object p0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 5
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RNFR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RNTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1411
    return-object p0
.end method

.method public setConnectTimeout(I)Lsun/net/ftp/FtpClient;
    .registers 2
    .param p1, "timeout"    # I

    .prologue
    .line 862
    iput p1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    .line 863
    return-object p0
.end method

.method public setDirParser(Lsun/net/ftp/FtpDirParser;)Lsun/net/ftp/FtpClient;
    .registers 2
    .param p1, "p"    # Lsun/net/ftp/FtpDirParser;

    .prologue
    .line 1807
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    .line 1808
    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lsun/net/ftp/FtpClient;
    .registers 2
    .param p1, "p"    # Ljava/net/Proxy;

    .prologue
    .line 899
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    .line 900
    return-object p0
.end method

.method public setReadTimeout(I)Lsun/net/ftp/FtpClient;
    .registers 2
    .param p1, "timeout"    # I

    .prologue
    .line 884
    iput p1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    .line 885
    return-object p0
.end method

.method public setRestartOffset(J)Lsun/net/ftp/FtpClient;
    .registers 6
    .param p1, "offset"    # J

    .prologue
    .line 1209
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    .line 1210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offset can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_f
    iput-wide p1, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1213
    return-object p0
.end method

.method public setType(Lsun/net/ftp/FtpClient$TransferType;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "type"    # Lsun/net/ftp/FtpClient$TransferType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1666
    const-string/jumbo v0, "NOOP"

    .line 1668
    .local v0, "cmd":Ljava/lang/String;
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    .line 1669
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    if-ne p1, v1, :cond_c

    .line 1670
    const-string/jumbo v0, "TYPE A"

    .line 1672
    :cond_c
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    if-ne p1, v1, :cond_13

    .line 1673
    const-string/jumbo v0, "TYPE I"

    .line 1675
    :cond_13
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->EBCDIC:Lsun/net/ftp/FtpClient$TransferType;

    if-ne p1, v1, :cond_1a

    .line 1676
    const-string/jumbo v0, "TYPE E"

    .line 1678
    :cond_1a
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1679
    return-object p0
.end method

.method public siteCmd(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SITE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2227
    return-object p0
.end method

.method public startSecureSession()Lsun/net/ftp/FtpClient;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 2056
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v4

    if-nez v4, :cond_12

    .line 2057
    new-instance v4, Lsun/net/ftp/FtpProtocolException;

    const-string/jumbo v5, "Not connected yet"

    sget-object v6, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v4, v5, v6}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v4

    .line 2059
    :cond_12
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_1e

    .line 2061
    :try_start_16
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_71

    .line 2066
    :cond_1e
    const-string/jumbo v4, "AUTH TLS"

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2067
    const/4 v2, 0x0

    .line 2069
    .local v2, "s":Ljava/net/Socket;
    :try_start_25
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    iget-object v6, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_39
    .catch Ljavax/net/ssl/SSLException; {:try_start_25 .. :try_end_39} :catch_7c

    move-result-object v2

    .line 2078
    .local v2, "s":Ljava/net/Socket;
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    .line 2079
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 2081
    :try_start_40
    new-instance v4, Ljava/io/PrintStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2082
    sget-object v6, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v7, 0x1

    .line 2081
    invoke-direct {v4, v5, v7, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_55} :catch_83

    .line 2086
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 2088
    const-string/jumbo v4, "PBSZ 0"

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2089
    const-string/jumbo v4, "PROT P"

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2090
    iput-boolean v9, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 2091
    return-object p0

    .line 2062
    .end local v2    # "s":Ljava/net/Socket;
    :catch_71
    move-exception v1

    .line 2063
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2070
    .end local v1    # "e":Ljava/lang/Exception;
    .local v2, "s":Ljava/net/Socket;
    :catch_7c
    move-exception v3

    .line 2072
    .local v3, "ssle":Ljavax/net/ssl/SSLException;
    :try_start_7d
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    .line 2075
    :goto_80
    throw v3

    .line 2073
    :catch_81
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_80

    .line 2083
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ssle":Ljavax/net/ssl/SSLException;
    .local v2, "s":Ljava/net/Socket;
    :catch_83
    move-exception v0

    .line 2084
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "encoding not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public structureMount(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .registers 4
    .param p1, "struct"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SMNT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2150
    return-object p0
.end method

.method public useKerberos()Lsun/net/ftp/FtpClient;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1977
    return-object p0
.end method
