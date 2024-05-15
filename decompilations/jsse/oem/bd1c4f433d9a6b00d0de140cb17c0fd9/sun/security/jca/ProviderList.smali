.class public final Lsun/security/jca/ProviderList;
.super Ljava/lang/Object;
.source "ProviderList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/jca/ProviderList$1;,
        Lsun/security/jca/ProviderList$2;,
        Lsun/security/jca/ProviderList$ServiceList;
    }
.end annotation


# static fields
.field static final EMPTY:Lsun/security/jca/ProviderList;

.field private static final EMPTY_PROVIDER:Ljava/security/Provider;

.field private static final P0:[Ljava/security/Provider;

.field private static final PC0:[Lsun/security/jca/ProviderConfig;

.field static final debug:Lsun/security/util/Debug;


# instance fields
.field private volatile allLoaded:Z

.field private final configs:[Lsun/security/jca/ProviderConfig;

.field private final userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lsun/security/jca/ProviderList;)[Lsun/security/jca/ProviderConfig;
    .registers 2
    .param p0, "-this"    # Lsun/security/jca/ProviderList;

    .prologue
    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 59
    const-string/jumbo v0, "jca"

    const-string/jumbo v1, "ProviderList"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    .line 58
    sput-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    .line 61
    new-array v0, v2, [Lsun/security/jca/ProviderConfig;

    sput-object v0, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    .line 63
    new-array v0, v2, [Ljava/security/Provider;

    sput-object v0, Lsun/security/jca/ProviderList;->P0:[Ljava/security/Provider;

    .line 66
    new-instance v0, Lsun/security/jca/ProviderList;

    sget-object v1, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    sput-object v0, Lsun/security/jca/ProviderList;->EMPTY:Lsun/security/jca/ProviderList;

    .line 71
    new-instance v0, Lsun/security/jca/ProviderList$1;

    const-string/jumbo v1, "##Empty##"

    const-string/jumbo v2, "initialization in progress"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v4, v5, v2}, Lsun/security/jca/ProviderList$1;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 70
    sput-object v0, Lsun/security/jca/ProviderList;->EMPTY_PROVIDER:Ljava/security/Provider;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v7, Lsun/security/jca/ProviderList$2;

    invoke-direct {v7, p0}, Lsun/security/jca/ProviderList$2;-><init>(Lsun/security/jca/ProviderList;)V

    iput-object v7, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    .line 164
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v3, "configList":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ProviderConfig;>;"
    const/4 v5, 0x1

    .line 166
    .local v5, "i":I
    :goto_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "security.provider."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "entry":Ljava/lang/String;
    if-nez v4, :cond_53

    .line 191
    :goto_2b
    sget-object v7, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lsun/security/jca/ProviderConfig;

    iput-object v7, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    .line 192
    sget-object v7, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_52

    .line 193
    sget-object v7, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "provider configuration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 195
    :cond_52
    return-void

    .line 170
    :cond_53
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_77

    .line 172
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid entry for security.provider."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2b

    .line 176
    :cond_77
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 178
    .local v6, "k":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_91

    .line 179
    new-instance v2, Lsun/security/jca/ProviderConfig;

    invoke-direct {v2, v4}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;)V

    .line 187
    .local v2, "config":Lsun/security/jca/ProviderConfig;
    :goto_85
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8e

    .line 188
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_8e
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 181
    .end local v2    # "config":Lsun/security/jca/ProviderConfig;
    :cond_91
    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "className":Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "argument":Ljava/lang/String;
    new-instance v2, Lsun/security/jca/ProviderConfig;

    invoke-direct {v2, v1, v0}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "config":Lsun/security/jca/ProviderConfig;
    goto :goto_85
.end method

.method synthetic constructor <init>(Lsun/security/jca/ProviderList;)V
    .registers 2
    .param p1, "-this0"    # Lsun/security/jca/ProviderList;

    .prologue
    invoke-direct {p0}, Lsun/security/jca/ProviderList;-><init>()V

    return-void
.end method

.method private constructor <init>([Lsun/security/jca/ProviderConfig;Z)V
    .registers 4
    .param p1, "configs"    # [Lsun/security/jca/ProviderConfig;
    .param p2, "allLoaded"    # Z

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lsun/security/jca/ProviderList$2;

    invoke-direct {v0, p0}, Lsun/security/jca/ProviderList$2;-><init>(Lsun/security/jca/ProviderList;)V

    iput-object v0, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    .line 156
    iput-object p1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    .line 157
    iput-boolean p2, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    .line 158
    return-void
.end method

.method public static add(Lsun/security/jca/ProviderList;Ljava/security/Provider;)Lsun/security/jca/ProviderList;
    .registers 3
    .param p0, "providerList"    # Lsun/security/jca/ProviderList;
    .param p1, "p"    # Ljava/security/Provider;

    .prologue
    .line 92
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lsun/security/jca/ProviderList;->insertAt(Lsun/security/jca/ProviderList;Ljava/security/Provider;I)Lsun/security/jca/ProviderList;

    move-result-object v0

    return-object v0
.end method

.method static fromSecurityProperties()Lsun/security/jca/ProviderList;
    .registers 1

    .prologue
    .line 84
    new-instance v0, Lsun/security/jca/ProviderList$3;

    invoke-direct {v0}, Lsun/security/jca/ProviderList$3;-><init>()V

    .line 83
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/jca/ProviderList;

    return-object v0
.end method

.method private getProviderConfig(Ljava/lang/String;)Lsun/security/jca/ProviderConfig;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v1, v1, v0

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static insertAt(Lsun/security/jca/ProviderList;Ljava/security/Provider;I)Lsun/security/jca/ProviderList;
    .registers 8
    .param p0, "providerList"    # Lsun/security/jca/ProviderList;
    .param p1, "p"    # Ljava/security/Provider;
    .param p2, "position"    # I

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 98
    return-object p0

    .line 100
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    .line 101
    iget-object v2, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 100
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ProviderConfig;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 103
    .local v1, "n":I
    if-ltz p2, :cond_1e

    if-le p2, v1, :cond_1f

    .line 104
    :cond_1e
    move p2, v1

    .line 106
    :cond_1f
    new-instance v2, Lsun/security/jca/ProviderConfig;

    invoke-direct {v2, p1}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/security/Provider;)V

    invoke-interface {v0, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 107
    new-instance v3, Lsun/security/jca/ProviderList;

    sget-object v2, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lsun/security/jca/ProviderConfig;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v3
.end method

.method private loadAll()I
    .registers 6

    .prologue
    .line 273
    iget-boolean v3, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    if-eqz v3, :cond_8

    .line 274
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v3, v3

    return v3

    .line 276
    :cond_8
    sget-object v3, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_1f

    .line 277
    sget-object v3, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "Loading all providers"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 278
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "Call trace"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    :cond_1f
    const/4 v1, 0x0

    .line 281
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v3, v3

    if-ge v0, v3, :cond_35

    .line 282
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v2

    .line 283
    .local v2, "p":Ljava/security/Provider;
    if-eqz v2, :cond_32

    .line 284
    add-int/lit8 v1, v1, 0x1

    .line 281
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 287
    .end local v2    # "p":Ljava/security/Provider;
    :cond_35
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v3, v3

    if-ne v1, v3, :cond_3d

    .line 288
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    .line 290
    :cond_3d
    return v1
.end method

.method public static varargs newList([Ljava/security/Provider;)Lsun/security/jca/ProviderList;
    .registers 5
    .param p0, "providers"    # [Ljava/security/Provider;

    .prologue
    .line 129
    array-length v2, p0

    new-array v0, v2, [Lsun/security/jca/ProviderConfig;

    .line 130
    .local v0, "configs":[Lsun/security/jca/ProviderConfig;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 131
    new-instance v2, Lsun/security/jca/ProviderConfig;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/security/Provider;)V

    aput-object v2, v0, v1

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 133
    :cond_13
    new-instance v2, Lsun/security/jca/ProviderList;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v2
.end method

.method public static remove(Lsun/security/jca/ProviderList;Ljava/lang/String;)Lsun/security/jca/ProviderList;
    .registers 10
    .param p0, "providerList"    # Lsun/security/jca/ProviderList;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    if-nez v4, :cond_7

    .line 113
    return-object p0

    .line 116
    :cond_7
    invoke-virtual {p0}, Lsun/security/jca/ProviderList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    new-array v1, v4, [Lsun/security/jca/ProviderConfig;

    .line 117
    .local v1, "configs":[Lsun/security/jca/ProviderConfig;
    const/4 v2, 0x0

    .line 118
    .local v2, "j":I
    iget-object v5, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    const/4 v4, 0x0

    array-length v6, v5

    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_15
    if-ge v4, v6, :cond_2f

    aget-object v0, v5, v4

    .line 119
    .local v0, "config":Lsun/security/jca/ProviderConfig;
    invoke-virtual {v0}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 120
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aput-object v0, v1, v3

    .line 118
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_15

    .line 123
    .end local v0    # "config":Lsun/security/jca/ProviderConfig;
    :cond_2f
    new-instance v4, Lsun/security/jca/ProviderList;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v4

    .restart local v0    # "config":Lsun/security/jca/ProviderConfig;
    :cond_36
    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_2b
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v2, v2

    if-ge v0, v2, :cond_18

    .line 263
    invoke-virtual {p0, v0}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    move-result-object v1

    .line 264
    .local v1, "p":Ljava/security/Provider;
    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 265
    return v0

    .line 262
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    .end local v1    # "p":Ljava/security/Provider;
    :cond_18
    const/4 v2, -0x1

    return v2
.end method

.method getJarList([Ljava/lang/String;)Lsun/security/jca/ProviderList;
    .registers 14
    .param p1, "jarClassNames"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 204
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v4, "newConfigs":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ProviderConfig;>;"
    array-length v8, p1

    move v7, v6

    :goto_8
    if-ge v7, v8, :cond_2a

    aget-object v0, p1, v7

    .line 206
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Lsun/security/jca/ProviderConfig;

    invoke-direct {v3, v0}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;)V

    .line 207
    .local v3, "newConfig":Lsun/security/jca/ProviderConfig;
    iget-object v9, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v10, v9

    move v5, v6

    :goto_15
    if-ge v5, v10, :cond_20

    aget-object v1, v9, v5

    .line 213
    .local v1, "config":Lsun/security/jca/ProviderConfig;
    invoke-virtual {v1, v3}, Lsun/security/jca/ProviderConfig;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    .line 214
    move-object v3, v1

    .line 218
    .end local v1    # "config":Lsun/security/jca/ProviderConfig;
    :cond_20
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_8

    .line 207
    .restart local v1    # "config":Lsun/security/jca/ProviderConfig;
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 220
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "config":Lsun/security/jca/ProviderConfig;
    .end local v3    # "newConfig":Lsun/security/jca/ProviderConfig;
    :cond_2a
    sget-object v5, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lsun/security/jca/ProviderConfig;

    .line 221
    .local v2, "configArray":[Lsun/security/jca/ProviderConfig;
    new-instance v5, Lsun/security/jca/ProviderList;

    invoke-direct {v5, v2, v6}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v5
.end method

.method getProvider(I)Ljava/security/Provider;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 233
    iget-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v0

    .line 234
    .local v0, "p":Ljava/security/Provider;
    if-eqz v0, :cond_b

    .end local v0    # "p":Ljava/security/Provider;
    :goto_a
    return-object v0

    .restart local v0    # "p":Ljava/security/Provider;
    :cond_b
    sget-object v0, Lsun/security/jca/ProviderList;->EMPTY_PROVIDER:Ljava/security/Provider;

    goto :goto_a
.end method

.method public getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct {p0, p1}, Lsun/security/jca/ProviderList;->getProviderConfig(Ljava/lang/String;)Lsun/security/jca/ProviderConfig;

    move-result-object v0

    .line 254
    .local v0, "config":Lsun/security/jca/ProviderConfig;
    if-nez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v1

    goto :goto_7
.end method

.method public getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v3, v3

    if-ge v0, v3, :cond_15

    .line 331
    invoke-virtual {p0, v0}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    move-result-object v1

    .line 332
    .local v1, "p":Ljava/security/Provider;
    invoke-virtual {v1, p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v2

    .line 333
    .local v2, "s":Ljava/security/Provider$Service;
    if-eqz v2, :cond_12

    .line 334
    return-object v2

    .line 330
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 337
    .end local v1    # "p":Ljava/security/Provider;
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_15
    return-object v4
.end method

.method public getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Lsun/security/jca/ProviderList$ServiceList;

    invoke-direct {v0, p0, p1, p2}, Lsun/security/jca/ProviderList$ServiceList;-><init>(Lsun/security/jca/ProviderList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getServices(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    .local p2, "algorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "alg$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    .local v0, "alg":Ljava/lang/String;
    new-instance v3, Lsun/security/jca/ServiceId;

    invoke-direct {v3, p1, v0}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 364
    .end local v0    # "alg":Ljava/lang/String;
    :cond_1e
    invoke-virtual {p0, v2}, Lsun/security/jca/ProviderList;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getServices(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/jca/ServiceId;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    new-instance v0, Lsun/security/jca/ProviderList$ServiceList;

    invoke-direct {v0, p0, p1}, Lsun/security/jca/ProviderList$ServiceList;-><init>(Lsun/security/jca/ProviderList;Ljava/util/List;)V

    return-object v0
.end method

.method public providers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    return-object v0
.end method

.method removeInvalid()Lsun/security/jca/ProviderList;
    .registers 9

    .prologue
    .line 299
    invoke-direct {p0}, Lsun/security/jca/ProviderList;->loadAll()I

    move-result v4

    .line 300
    .local v4, "n":I
    iget-object v6, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v6, v6

    if-ne v4, v6, :cond_a

    .line 301
    return-object p0

    .line 303
    :cond_a
    new-array v5, v4, [Lsun/security/jca/ProviderConfig;

    .line 304
    .local v5, "newConfigs":[Lsun/security/jca/ProviderConfig;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_e
    iget-object v6, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v6, v6

    if-ge v1, v6, :cond_25

    .line 305
    iget-object v6, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v0, v6, v1

    .line 306
    .local v0, "config":Lsun/security/jca/ProviderConfig;
    invoke-virtual {v0}, Lsun/security/jca/ProviderConfig;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 307
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    aput-object v0, v5, v2

    move v2, v3

    .line 304
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 310
    .end local v0    # "config":Lsun/security/jca/ProviderConfig;
    :cond_25
    new-instance v6, Lsun/security/jca/ProviderList;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v6
.end method

.method public size()I
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/security/Provider;
    .registers 3

    .prologue
    .line 315
    invoke-virtual {p0}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lsun/security/jca/ProviderList;->P0:[Ljava/security/Provider;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Provider;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
