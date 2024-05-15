.class final Ljava/lang/ProcessEnvironment;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessEnvironment$StringKeySet;,
        Ljava/lang/ProcessEnvironment$StringValues;,
        Ljava/lang/ProcessEnvironment$StringEntrySet;,
        Ljava/lang/ProcessEnvironment$StringEntry;,
        Ljava/lang/ProcessEnvironment$StringEnvironment;,
        Ljava/lang/ProcessEnvironment$Value;,
        Ljava/lang/ProcessEnvironment$Variable;,
        Ljava/lang/ProcessEnvironment$ExternalData;
    }
.end annotation


# static fields
.field static final blacklist MIN_NAME_LENGTH:I

.field private static final blacklist theEnvironment:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist theUnmodifiableEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 70
    invoke-static {}, Ljava/lang/ProcessEnvironment;->environ()[[B

    move-result-object v0

    .line 71
    .local v0, "environ":[[B
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    .line 74
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_13
    if-lez v1, :cond_2b

    .line 75
    sget-object v2, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/ProcessEnvironment$Variable;->valueOf([B)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v3

    aget-object v4, v0, v1

    .line 76
    invoke-static {v4}, Ljava/lang/ProcessEnvironment$Value;->valueOf([B)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v4

    .line 75
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v1, v1, -0x2

    goto :goto_13

    .line 78
    .end local v1    # "i":I
    :cond_2b
    new-instance v1, Ljava/lang/ProcessEnvironment$StringEnvironment;

    sget-object v2, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/lang/ProcessEnvironment$StringEnvironment;-><init>(Ljava/util/Map;)V

    .line 80
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Ljava/lang/ProcessEnvironment;->theUnmodifiableEnvironment:Ljava/util/Map;

    .line 81
    .end local v0    # "environ":[[B
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000([B[B)Z
    .registers 3
    .param p0, "x0"    # [B
    .param p1, "x1"    # [B

    .line 61
    invoke-static {p0, p1}, Ljava/lang/ProcessEnvironment;->arrayEquals([B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100([B)I
    .registers 2
    .param p0, "x0"    # [B

    .line 61
    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->arrayHash([B)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$200(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 61
    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->validateVariable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$300([B[B)I
    .registers 3
    .param p0, "x0"    # [B
    .param p1, "x1"    # [B

    .line 61
    invoke-static {p0, p1}, Ljava/lang/ProcessEnvironment;->arrayCompare([B[B)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 61
    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->validateValue(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist arrayCompare([B[B)I
    .registers 6
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .line 415
    array-length v0, p0

    array-length v1, p1

    if-ge v0, v1, :cond_6

    array-length v0, p0

    goto :goto_7

    :cond_6
    array-length v0, p1

    .line 416
    .local v0, "min":I
    :goto_7
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_19

    .line 417
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_16

    .line 418
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    sub-int/2addr v2, v3

    return v2

    .line 416
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 419
    .end local v1    # "i":I
    :cond_19
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1
.end method

.method private static blacklist arrayEquals([B[B)Z
    .registers 6
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .line 424
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    .line 425
    return v2

    .line 426
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 427
    aget-byte v1, p0, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_11

    .line 428
    return v2

    .line 426
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 429
    .end local v0    # "i":I
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist arrayHash([B)I
    .registers 5
    .param p0, "x"    # [B

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
    .end local v1    # "i":I
    :cond_e
    return v0
.end method

.method static blacklist emptyEnvironment(I)Ljava/util/Map;
    .registers 3
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEnvironment;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringEnvironment;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static native blacklist environ()[[B
.end method

.method static blacklist environment()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEnvironment;

    sget-object v1, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    .line 97
    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringEnvironment;-><init>(Ljava/util/Map;)V

    .line 96
    return-object v0
.end method

.method static blacklist getenv(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 85
    sget-object v0, Ljava/lang/ProcessEnvironment;->theUnmodifiableEnvironment:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static blacklist getenv()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    sget-object v0, Ljava/lang/ProcessEnvironment;->theUnmodifiableEnvironment:Ljava/util/Map;

    return-object v0
.end method

.method static blacklist toEnvironmentBlock(Ljava/util/Map;[I)[B
    .registers 3
    .param p1, "envc"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[I)[B"
        }
    .end annotation

    .line 297
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_b

    .line 298
    :cond_4
    move-object v0, p0

    check-cast v0, Ljava/lang/ProcessEnvironment$StringEnvironment;

    invoke-virtual {v0, p1}, Ljava/lang/ProcessEnvironment$StringEnvironment;->toEnvironmentBlock([I)[B

    move-result-object v0

    .line 297
    :goto_b
    return-object v0
.end method

.method private static blacklist validateValue(Ljava/lang/String;)V
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 123
    return-void

    .line 121
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid environment variable value: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validateVariable(Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 112
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_11

    .line 116
    return-void

    .line 114
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid environment variable name: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
