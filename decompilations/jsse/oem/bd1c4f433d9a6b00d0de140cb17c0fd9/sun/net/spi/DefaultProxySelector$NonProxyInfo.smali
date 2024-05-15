.class Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
.super Ljava/lang/Object;
.source "DefaultProxySelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/spi/DefaultProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NonProxyInfo"
.end annotation


# static fields
.field static final defStringVal:Ljava/lang/String; = "localhost|127.*|[::1]|0.0.0.0|[::0]"

.field static ftpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field static httpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field static httpsNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field static socksNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;


# instance fields
.field final defaultVal:Ljava/lang/String;

.field hostsSource:Ljava/lang/String;

.field pattern:Ljava/util/regex/Pattern;

.field final property:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 130
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const-string/jumbo v1, "ftp.nonProxyHosts"

    const-string/jumbo v2, "localhost|127.*|[::1]|0.0.0.0|[::0]"

    invoke-direct {v0, v1, v3, v3, v2}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->ftpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .line 131
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const-string/jumbo v1, "http.nonProxyHosts"

    const-string/jumbo v2, "localhost|127.*|[::1]|0.0.0.0|[::0]"

    invoke-direct {v0, v1, v3, v3, v2}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .line 132
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const-string/jumbo v1, "socksNonProxyHosts"

    const-string/jumbo v2, "localhost|127.*|[::1]|0.0.0.0|[::0]"

    invoke-direct {v0, v1, v3, v3, v2}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->socksNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .line 134
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const-string/jumbo v1, "https.nonProxyHosts"

    const-string/jumbo v2, "localhost|127.*|[::1]|0.0.0.0|[::0]"

    invoke-direct {v0, v1, v3, v3, v2}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpsNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .line 121
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 5
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "pattern"    # Ljava/util/regex/Pattern;
    .param p4, "d"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->property:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->pattern:Ljava/util/regex/Pattern;

    .line 140
    iput-object p4, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    .line 141
    return-void
.end method
