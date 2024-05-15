.class public Lsun/security/jca/Providers;
.super Ljava/lang/Object;
.source "Providers.java"


# static fields
.field private static final BACKUP_PROVIDER_CLASSNAME:Ljava/lang/String; = "sun.security.provider.VerificationProvider"

.field private static final jarVerificationProviders:[Ljava/lang/String;

.field private static volatile providerList:Lsun/security/jca/ProviderList;

.field private static final threadLists:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/security/jca/ProviderList;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile threadListsUsed:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 41
    new-instance v1, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v1}, Ljava/lang/InheritableThreadLocal;-><init>()V

    .line 40
    sput-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    .line 54
    sget-object v1, Lsun/security/jca/ProviderList;->EMPTY:Lsun/security/jca/ProviderList;

    sput-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 55
    invoke-static {}, Lsun/security/jca/ProviderList;->fromSecurityProperties()Lsun/security/jca/ProviderList;

    move-result-object v1

    sput-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 61
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->size()I

    move-result v0

    .line 62
    .local v0, "numConfiguredProviders":I
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    move-result-object v1

    sput-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 63
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->size()I

    move-result v1

    if-eq v0, v1, :cond_30

    .line 64
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Unable to configure default providers"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 95
    :cond_30
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 104
    const-string/jumbo v2, "com.android.org.conscrypt.OpenSSLProvider"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 105
    const-string/jumbo v2, "com.android.org.bouncycastle.jce.provider.BouncyCastleProvider"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 106
    const-string/jumbo v2, "com.android.org.conscrypt.JSSEProvider"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 108
    const-string/jumbo v2, "sun.security.provider.VerificationProvider"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 95
    sput-object v1, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static declared-synchronized beginThreadProviderList(Lsun/security/jca/ProviderList;)Lsun/security/jca/ProviderList;
    .registers 6
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    .prologue
    const-class v2, Lsun/security/jca/Providers;

    monitor-enter v2

    .line 241
    :try_start_3
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_20

    .line 242
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ThreadLocal providers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 244
    :cond_20
    sget-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/jca/ProviderList;

    .line 245
    .local v0, "oldList":Lsun/security/jca/ProviderList;
    sget v1, Lsun/security/jca/Providers;->threadListsUsed:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lsun/security/jca/Providers;->threadListsUsed:I

    .line 246
    sget-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_35

    monitor-exit v2

    .line 247
    return-object v0

    .end local v0    # "oldList":Lsun/security/jca/ProviderList;
    :catchall_35
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static changeThreadProviderList(Lsun/security/jca/ProviderList;)V
    .registers 2
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    .prologue
    .line 221
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public static declared-synchronized endThreadProviderList(Lsun/security/jca/ProviderList;)V
    .registers 5
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    .prologue
    const-class v1, Lsun/security/jca/Providers;

    monitor-enter v1

    .line 251
    if-nez p0, :cond_1e

    .line 252
    :try_start_5
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_11

    .line 253
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "Disabling ThreadLocal providers"

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 255
    :cond_11
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 263
    :goto_16
    sget v0, Lsun/security/jca/Providers;->threadListsUsed:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/security/jca/Providers;->threadListsUsed:I
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_41

    monitor-exit v1

    .line 264
    return-void

    .line 257
    :cond_1e
    :try_start_1e
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3b

    .line 258
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Restoring previous ThreadLocal providers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 261
    :cond_3b
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_1e .. :try_end_40} :catchall_41

    goto :goto_16

    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getFullProviderList()Lsun/security/jca/ProviderList;
    .registers 4

    .prologue
    .line 180
    const-class v3, Lsun/security/jca/Providers;

    monitor-enter v3

    .line 181
    :try_start_3
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 182
    .local v0, "list":Lsun/security/jca/ProviderList;
    if-eqz v0, :cond_15

    .line 183
    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 184
    .local v1, "newList":Lsun/security/jca/ProviderList;
    if-eq v1, v0, :cond_13

    .line 185
    invoke-static {v1}, Lsun/security/jca/Providers;->changeThreadProviderList(Lsun/security/jca/ProviderList;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_25

    .line 186
    move-object v0, v1

    :cond_13
    monitor-exit v3

    .line 188
    return-object v0

    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    :cond_15
    monitor-exit v3

    .line 191
    invoke-static {}, Lsun/security/jca/Providers;->getSystemProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 193
    .restart local v1    # "newList":Lsun/security/jca/ProviderList;
    if-eq v1, v0, :cond_24

    .line 194
    invoke-static {v1}, Lsun/security/jca/Providers;->setSystemProviderList(Lsun/security/jca/ProviderList;)V

    .line 195
    move-object v0, v1

    .line 197
    :cond_24
    return-object v0

    .line 180
    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    :catchall_25
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getProviderList()Lsun/security/jca/ProviderList;
    .registers 1

    .prologue
    .line 154
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 155
    .local v0, "list":Lsun/security/jca/ProviderList;
    if-nez v0, :cond_a

    .line 156
    invoke-static {}, Lsun/security/jca/Providers;->getSystemProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 158
    :cond_a
    return-object v0
.end method

.method public static getSunProvider()Ljava/security/Provider;
    .registers 5

    .prologue
    .line 116
    :try_start_0
    sget-object v3, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v3

    .line 118
    :catch_10
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    :try_start_11
    const-string/jumbo v3, "sun.security.provider.VerificationProvider"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1f

    return-object v3

    .line 122
    :catch_1f
    move-exception v2

    .line 123
    .local v2, "ee":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Sun provider not found"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getSystemProviderList()Lsun/security/jca/ProviderList;
    .registers 1

    .prologue
    .line 201
    sget-object v0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    return-object v0
.end method

.method public static getThreadProviderList()Lsun/security/jca/ProviderList;
    .registers 1

    .prologue
    .line 211
    sget v0, Lsun/security/jca/Providers;->threadListsUsed:I

    if-nez v0, :cond_6

    .line 212
    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_6
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/jca/ProviderList;

    return-object v0
.end method

.method public static setProviderList(Lsun/security/jca/ProviderList;)V
    .registers 2
    .param p0, "newList"    # Lsun/security/jca/ProviderList;

    .prologue
    .line 166
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    if-nez v0, :cond_a

    .line 167
    invoke-static {p0}, Lsun/security/jca/Providers;->setSystemProviderList(Lsun/security/jca/ProviderList;)V

    .line 171
    :goto_9
    return-void

    .line 169
    :cond_a
    invoke-static {p0}, Lsun/security/jca/Providers;->changeThreadProviderList(Lsun/security/jca/ProviderList;)V

    goto :goto_9
.end method

.method private static setSystemProviderList(Lsun/security/jca/ProviderList;)V
    .registers 1
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    .prologue
    .line 205
    sput-object p0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 206
    return-void
.end method

.method public static startJarVerification()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 135
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 136
    .local v0, "currentList":Lsun/security/jca/ProviderList;
    sget-object v2, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lsun/security/jca/ProviderList;->getJarList([Ljava/lang/String;)Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 138
    .local v1, "jarList":Lsun/security/jca/ProviderList;
    invoke-static {v1}, Lsun/security/jca/Providers;->beginThreadProviderList(Lsun/security/jca/ProviderList;)Lsun/security/jca/ProviderList;

    move-result-object v2

    return-object v2
.end method

.method public static stopJarVerification(Ljava/lang/Object;)V
    .registers 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 146
    check-cast p0, Lsun/security/jca/ProviderList;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lsun/security/jca/Providers;->endThreadProviderList(Lsun/security/jca/ProviderList;)V

    .line 147
    return-void
.end method
