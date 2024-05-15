.class public final enum Lcom/android/org/conscrypt/metrics/CipherSuite;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/metrics/CipherSuite;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_PSK_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_PSK_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_RSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist UNKNOWN_CIPHER_SUITE:Lcom/android/org/conscrypt/metrics/CipherSuite;


# instance fields
.field final blacklist id:S


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 27

    .line 32
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v1, "UNKNOWN_CIPHER_SUITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->UNKNOWN_CIPHER_SUITE:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 35
    new-instance v1, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const/4 v4, 0x1

    const v5, 0xc00a

    invoke-direct {v1, v3, v4, v5}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 36
    new-instance v3, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v5, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const/4 v6, 0x2

    const v7, 0xc014

    invoke-direct {v3, v5, v6, v7}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 37
    new-instance v5, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v7, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/4 v8, 0x3

    const/16 v9, 0x35

    invoke-direct {v5, v7, v8, v9}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 38
    new-instance v7, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v9, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const/4 v10, 0x4

    const v11, 0xc009

    invoke-direct {v7, v9, v10, v11}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 39
    new-instance v9, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v11, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const/4 v12, 0x5

    const v13, 0xc013

    invoke-direct {v9, v11, v12, v13}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 40
    new-instance v11, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v13, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/4 v14, 0x6

    const/16 v15, 0x2f

    invoke-direct {v11, v13, v14, v15}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 41
    new-instance v13, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v15, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    const/4 v14, 0x7

    const/16 v12, 0xa

    invoke-direct {v13, v15, v14, v12}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 44
    new-instance v15, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v10, 0x8

    const/16 v8, 0x9c

    invoke-direct {v15, v14, v10, v8}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 45
    new-instance v8, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v10, 0x9

    const/16 v6, 0x9d

    invoke-direct {v8, v14, v10, v6}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 46
    new-instance v6, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v10, 0xc02f

    invoke-direct {v6, v14, v12, v10}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 47
    new-instance v10, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v12, 0xb

    const v4, 0xc030

    invoke-direct {v10, v14, v12, v4}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 48
    new-instance v4, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const/16 v12, 0xc

    const v2, 0xc02b

    invoke-direct {v4, v14, v12, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 49
    new-instance v2, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const/16 v12, 0xd

    move-object/from16 v16, v4

    const v4, 0xc02c

    invoke-direct {v2, v14, v12, v4}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 50
    new-instance v4, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    const/16 v12, 0xe

    move-object/from16 v17, v2

    const v2, 0xcca9

    invoke-direct {v4, v14, v12, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 51
    new-instance v2, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const/16 v12, 0xf

    move-object/from16 v18, v4

    const v4, 0xcca8

    invoke-direct {v2, v14, v12, v4}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 54
    new-instance v4, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_PSK_WITH_AES_128_CBC_SHA"

    const/16 v12, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x8c

    invoke-direct {v4, v14, v12, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_PSK_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 55
    new-instance v2, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_PSK_WITH_AES_256_CBC_SHA"

    const/16 v12, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x8d

    invoke-direct {v2, v14, v12, v4}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_PSK_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 56
    new-instance v4, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const/16 v12, 0x12

    move-object/from16 v21, v2

    const v2, 0xc035

    invoke-direct {v4, v14, v12, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 57
    new-instance v2, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    const/16 v12, 0x13

    move-object/from16 v22, v4

    const v4, 0xc036

    invoke-direct {v2, v14, v12, v4}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 58
    new-instance v4, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    const/16 v12, 0x14

    move-object/from16 v23, v2

    const v2, 0xccac

    invoke-direct {v4, v14, v12, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 61
    new-instance v2, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_AES_128_GCM_SHA256"

    const/16 v12, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0x1301

    invoke-direct {v2, v14, v12, v4}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 62
    new-instance v4, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v14, "TLS_AES_256_GCM_SHA384"

    const/16 v12, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x1302

    invoke-direct {v4, v14, v12, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 63
    new-instance v2, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v12, "TLS_CHACHA20_POLY1305_SHA256"

    const/16 v14, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x1303

    invoke-direct {v2, v12, v14, v4}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 30
    const/16 v4, 0x18

    new-array v4, v4, [Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/4 v12, 0x0

    aput-object v0, v4, v12

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v8, v4, v0

    const/16 v0, 0xa

    aput-object v6, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v2, v4, v0

    sput-object v4, Lcom/android/org/conscrypt/metrics/CipherSuite;->$VALUES:[Lcom/android/org/conscrypt/metrics/CipherSuite;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    int-to-short p1, p3

    iput-short p1, p0, Lcom/android/org/conscrypt/metrics/CipherSuite;->id:S

    .line 82
    return-void
.end method

.method public static blacklist forName(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/CipherSuite;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 74
    :try_start_0
    invoke-static {p0}, Lcom/android/org/conscrypt/metrics/CipherSuite;->valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/CipherSuite;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 75
    :catch_5
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/org/conscrypt/metrics/CipherSuite;->UNKNOWN_CIPHER_SUITE:Lcom/android/org/conscrypt/metrics/CipherSuite;

    return-object v1
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/CipherSuite;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/metrics/CipherSuite;
    .registers 1

    .line 30
    sget-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->$VALUES:[Lcom/android/org/conscrypt/metrics/CipherSuite;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/metrics/CipherSuite;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/metrics/CipherSuite;

    return-object v0
.end method


# virtual methods
.method public blacklist getId()I
    .registers 2

    .line 69
    iget-short v0, p0, Lcom/android/org/conscrypt/metrics/CipherSuite;->id:S

    return v0
.end method
