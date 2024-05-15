.class public abstract Lsun/net/ftp/FtpClientProvider;
.super Ljava/lang/Object;
.source "FtpClientProvider.java"


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static provider:Lsun/net/ftp/FtpClientProvider;


# direct methods
.method static synthetic -get0()Lsun/net/ftp/FtpClientProvider;
    .registers 1

    sget-object v0, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;

    return-object v0
.end method

.method static synthetic -set0(Lsun/net/ftp/FtpClientProvider;)Lsun/net/ftp/FtpClientProvider;
    .registers 1
    .param p0, "-value"    # Lsun/net/ftp/FtpClientProvider;

    .prologue
    sput-object p0, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;

    return-object p0
.end method

.method static synthetic -wrap0()Z
    .registers 1

    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->loadProviderAsService()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()Z
    .registers 1

    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->loadProviderFromProperty()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsun/net/ftp/FtpClientProvider;->lock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;

    .line 40
    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 59
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_14

    .line 60
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "ftpClientProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 62
    :cond_14
    return-void
.end method

.method private static loadProviderAsService()Z
    .registers 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method private static loadProviderFromProperty()Z
    .registers 6

    .prologue
    const/4 v5, 0x1

    .line 65
    const-string/jumbo v3, "sun.net.ftpClientProvider"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "cm":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 67
    const/4 v3, 0x0

    return v3

    .line 70
    :cond_c
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_e
    invoke-static {v1, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/net/ftp/FtpClientProvider;

    sput-object v3, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_1a} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_1a} :catch_1b
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_1a} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_1a} :catch_1b

    .line 72
    return v5

    .line 76
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1b
    move-exception v2

    .line 77
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static provider()Lsun/net/ftp/FtpClientProvider;
    .registers 2

    .prologue
    .line 137
    sget-object v1, Lsun/net/ftp/FtpClientProvider;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_3
    sget-object v0, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;

    if-eqz v0, :cond_b

    .line 139
    sget-object v0, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_18

    monitor-exit v1

    return-object v0

    .line 142
    :cond_b
    :try_start_b
    new-instance v0, Lsun/net/ftp/FtpClientProvider$1;

    invoke-direct {v0}, Lsun/net/ftp/FtpClientProvider$1;-><init>()V

    .line 141
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/net/ftp/FtpClientProvider;
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_18

    monitor-exit v1

    return-object v0

    .line 137
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract createFtpClient()Lsun/net/ftp/FtpClient;
.end method
