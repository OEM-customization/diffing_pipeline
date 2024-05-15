.class final Ljava/lang/ProcessEnvironment;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessEnvironment$ExternalData;,
        Ljava/lang/ProcessEnvironment$StringEntry;,
        Ljava/lang/ProcessEnvironment$StringEntrySet;,
        Ljava/lang/ProcessEnvironment$StringEnvironment;,
        Ljava/lang/ProcessEnvironment$StringKeySet;,
        Ljava/lang/ProcessEnvironment$StringValues;,
        Ljava/lang/ProcessEnvironment$Value;,
        Ljava/lang/ProcessEnvironment$Variable;
    }
.end annotation


# static fields
.field static final MIN_NAME_LENGTH:I

.field private static final theEnvironment:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field

.field private static final theUnmodifiableEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0([B[B)Z
    .registers 3
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .prologue
    invoke-static {p0, p1}, Ljava/lang/ProcessEnvironment;->arrayEquals([B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1([B[B)I
    .registers 3
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .prologue
    invoke-static {p0, p1}, Ljava/lang/ProcessEnvironment;->arrayCompare([B[B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2([B)I
    .registers 2
    .param p0, "x"    # [B

    .prologue
    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->arrayHash([B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;)V
    .registers 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->validateValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Ljava/lang/String;)V
    .registers 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->validateVariable(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/ProcessEnvironment;->environ()[[B

    move-result-object v0

    .line 71
    .local v0, "environ":[[B
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    .line 74
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_13
    if-lez v1, :cond_2b

    .line 75
    sget-object v2, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/ProcessEnvironment$Variable;->valueOf([B)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v3

    .line 76
    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/ProcessEnvironment$Value;->valueOf([B)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v4

    .line 75
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v1, v1, -0x2

    goto :goto_13

    .line 80
    :cond_2b
    new-instance v2, Ljava/lang/ProcessEnvironment$StringEnvironment;

    sget-object v3, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/lang/ProcessEnvironment$StringEnvironment;-><init>(Ljava/util/Map;)V

    .line 79
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 78
    sput-object v2, Ljava/lang/ProcessEnvironment;->theUnmodifiableEnvironment:Ljava/util/Map;

    .line 61
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrayCompare([B[B)I
    .registers 6
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .prologue
    .line 415
    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_14

    array-length v1, p0

    .line 416
    .local v1, "min":I
    :goto_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_19

    .line 417
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_16

    .line 418
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    sub-int/2addr v2, v3

    return v2

    .line 415
    .end local v0    # "i":I
    .end local v1    # "min":I
    :cond_14
    array-length v1, p1

    .restart local v1    # "min":I
    goto :goto_5

    .line 416
    .restart local v0    # "i":I
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 419
    :cond_19
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    return v2
.end method

.method private static arrayEquals([B[B)Z
    .registers 6
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .prologue
    const/4 v3, 0x0

    .line 424
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_6

    .line 425
    return v3

    .line 426
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 427
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_11

    .line 428
    return v3

    .line 426
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 429
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method private static arrayHash([B)I
    .registers 5
    .param p0, "x"    # [B

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    .line 436
    mul-int/lit8 v2, v0, 0x1f

    aget-byte v3, p0, v1

    add-int v0, v2, v3

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 437
    :cond_e
    return v0
.end method

.method static emptyEnvironment(I)Ljava/util/Map;
    .registers 3
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEnvironment;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringEnvironment;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static native environ()[[B
.end method

.method static environment()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v1, Ljava/lang/ProcessEnvironment$StringEnvironment;

    .line 97
    sget-object v0, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 96
    invoke-direct {v1, v0}, Ljava/lang/ProcessEnvironment$StringEnvironment;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method static getenv(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v0, Ljava/lang/ProcessEnvironment;->theUnmodifiableEnvironment:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static getenv()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Ljava/lang/ProcessEnvironment;->theUnmodifiableEnvironment:Ljava/util/Map;

    return-object v0
.end method

.method static toEnvironmentBlock(Ljava/util/Map;[I)[B
    .registers 3
    .param p1, "envc"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[I)[B"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 297
    if-nez p0, :cond_4

    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    return-object v0

    .line 298
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    check-cast p0, Ljava/lang/ProcessEnvironment$StringEnvironment;

    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEnvironment;->toEnvironmentBlock([I)[B

    move-result-object v0

    goto :goto_3
.end method

.method private static validateValue(Ljava/lang/String;)V
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid environment variable value: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_29
    return-void
.end method

.method private static validateVariable(Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 112
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_10

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_31

    .line 114
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid environment variable name: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_31
    return-void
.end method
