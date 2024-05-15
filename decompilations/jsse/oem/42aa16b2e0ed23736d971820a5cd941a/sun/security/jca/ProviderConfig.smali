.class final Lsun/security/jca/ProviderConfig;
.super Ljava/lang/Object;
.source "ProviderConfig.java"


# static fields
.field private static final greylist CL_STRING:[Ljava/lang/Class;

.field private static final blacklist MAX_LOAD_TRIES:I = 0x1e

.field private static final blacklist P11_SOL_ARG:Ljava/lang/String; = "${java.home}/lib/security/sunpkcs11-solaris.cfg"

.field private static final blacklist P11_SOL_NAME:Ljava/lang/String; = "sun.security.pkcs11.SunPKCS11"

.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private final greylist argument:Ljava/lang/String;

.field private final blacklist className:Ljava/lang/String;

.field private blacklist isLoading:Z

.field private volatile blacklist provider:Ljava/security/Provider;

.field private blacklist tries:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 45
    nop

    .line 46
    const-string v0, "jca"

    const-string v1, "ProviderConfig"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/jca/ProviderConfig;->CL_STRING:[Ljava/lang/Class;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .line 89
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "sun.security.pkcs11.SunPKCS11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "${java.home}/lib/security/sunpkcs11-solaris.cfg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 82
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->checkSunPKCS11Solaris()V

    .line 84
    :cond_16
    iput-object p1, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    .line 85
    invoke-static {p2}, Lsun/security/jca/ProviderConfig;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    .line 86
    return-void
.end method

.method constructor blacklist <init>(Ljava/security/Provider;)V
    .registers 3
    .param p1, "provider"    # Ljava/security/Provider;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lsun/security/jca/ProviderConfig;->provider:Ljava/security/Provider;

    .line 96
    return-void
.end method

.method static synthetic blacklist access$000()Lsun/security/util/Debug;
    .registers 1

    .line 43
    sget-object v0, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lsun/security/jca/ProviderConfig;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lsun/security/jca/ProviderConfig;

    .line 43
    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lsun/security/jca/ProviderConfig;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;
    .registers 4
    .param p0, "x0"    # Lsun/security/jca/ProviderConfig;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lsun/security/jca/ProviderConfig;->initProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$300(Lsun/security/jca/ProviderConfig;)V
    .registers 1
    .param p0, "x0"    # Lsun/security/jca/ProviderConfig;

    .line 43
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->disableLoad()V

    return-void
.end method

.method private blacklist checkSunPKCS11Solaris()V
    .registers 3

    .line 102
    new-instance v0, Lsun/security/jca/ProviderConfig$1;

    invoke-direct {v0, p0}, Lsun/security/jca/ProviderConfig$1;-><init>(Lsun/security/jca/ProviderConfig;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 116
    .local v0, "o":Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_13

    .line 117
    const/16 v1, 0x1e

    iput v1, p0, Lsun/security/jca/ProviderConfig;->tries:I

    .line 119
    :cond_13
    return-void
.end method

.method private greylist disableLoad()V
    .registers 2

    .line 132
    const/16 v0, 0x1e

    iput v0, p0, Lsun/security/jca/ProviderConfig;->tries:I

    .line 133
    return-void
.end method

.method private blacklist doLoadProvider()Ljava/security/Provider;
    .registers 2

    .line 206
    new-instance v0, Lsun/security/jca/ProviderConfig$2;

    invoke-direct {v0, p0}, Lsun/security/jca/ProviderConfig$2;-><init>(Lsun/security/jca/ProviderConfig;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    return-object v0
.end method

.method private static blacklist expand(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 282
    const-string v0, "${"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 283
    return-object p0

    .line 285
    :cond_9
    new-instance v0, Lsun/security/jca/ProviderConfig$3;

    invoke-direct {v0, p0}, Lsun/security/jca/ProviderConfig$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private greylist hasArgument()Z
    .registers 2

    .line 122
    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist initProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;
    .registers 8
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 248
    if-eqz p2, :cond_7

    .line 249
    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "provClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_b

    .line 251
    .end local v0    # "provClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 254
    .restart local v0    # "provClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_b
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->hasArgument()Z

    move-result v1

    if-nez v1, :cond_16

    .line 255
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .local v1, "obj":Ljava/lang/Object;
    goto :goto_29

    .line 257
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_16
    sget-object v1, Lsun/security/jca/ProviderConfig;->CL_STRING:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 258
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 260
    .local v1, "obj":Ljava/lang/Object;
    :goto_29
    instance-of v2, v1, Ljava/security/Provider;

    if-eqz v2, :cond_49

    .line 261
    sget-object v2, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_45

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 264
    :cond_45
    move-object v2, v1

    check-cast v2, Ljava/security/Provider;

    return-object v2

    .line 266
    :cond_49
    sget-object v2, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_61

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not a provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 269
    :cond_61
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->disableLoad()V

    .line 270
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist shouldLoad()Z
    .registers 3

    .line 127
    iget v0, p0, Lsun/security/jca/ProviderConfig;->tries:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 141
    return v0

    .line 143
    :cond_4
    instance-of v1, p1, Lsun/security/jca/ProviderConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 144
    return v2

    .line 146
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/security/jca/ProviderConfig;

    .line 147
    .local v1, "other":Lsun/security/jca/ProviderConfig;
    iget-object v3, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    iget-object v4, v1, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    iget-object v4, v1, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 147
    :goto_23
    return v0
.end method

.method declared-synchronized blacklist getProvider()Ljava/security/Provider;
    .registers 6

    monitor-enter p0

    .line 168
    :try_start_1
    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->provider:Ljava/security/Provider;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_53

    .line 169
    .local v0, "p":Ljava/security/Provider;
    if-eqz v0, :cond_7

    .line 170
    monitor-exit p0

    return-object v0

    .line 172
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->shouldLoad()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_53

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 173
    monitor-exit p0

    return-object v2

    .line 175
    :cond_10
    :try_start_10
    iget-boolean v1, p0, Lsun/security/jca/ProviderConfig;->isLoading:Z

    if-eqz v1, :cond_3a

    .line 178
    sget-object v1, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_38

    .line 179
    sget-object v1, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recursion loading provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "Call trace"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_53

    .line 182
    .end local p0    # "this":Lsun/security/jca/ProviderConfig;
    :cond_38
    monitor-exit p0

    return-object v2

    .line 185
    :cond_3a
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3c
    iput-boolean v2, p0, Lsun/security/jca/ProviderConfig;->isLoading:Z

    .line 186
    iget v3, p0, Lsun/security/jca/ProviderConfig;->tries:I

    add-int/2addr v3, v2

    iput v3, p0, Lsun/security/jca/ProviderConfig;->tries:I

    .line 187
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->doLoadProvider()Ljava/security/Provider;

    move-result-object v2
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_4f

    move-object v0, v2

    .line 189
    :try_start_48
    iput-boolean v1, p0, Lsun/security/jca/ProviderConfig;->isLoading:Z

    .line 190
    nop

    .line 191
    iput-object v0, p0, Lsun/security/jca/ProviderConfig;->provider:Ljava/security/Provider;
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_53

    .line 192
    monitor-exit p0

    return-object v0

    .line 189
    :catchall_4f
    move-exception v2

    :try_start_50
    iput-boolean v1, p0, Lsun/security/jca/ProviderConfig;->isLoading:Z

    .line 190
    throw v2
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_53

    .line 167
    .end local v0    # "p":Ljava/security/Provider;
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 152
    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method blacklist isLoaded()Z
    .registers 2

    .line 136
    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->provider:Ljava/security/Provider;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 156
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->hasArgument()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_24
    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    return-object v0
.end method
