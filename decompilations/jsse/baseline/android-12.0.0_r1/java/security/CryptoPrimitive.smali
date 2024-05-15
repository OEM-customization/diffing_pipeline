.class public final enum Ljava/security/CryptoPrimitive;
.super Ljava/lang/Enum;
.source "CryptoPrimitive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/security/CryptoPrimitive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/security/CryptoPrimitive;

.field public static final enum whitelist test-api BLOCK_CIPHER:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist test-api KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist test-api KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist test-api KEY_WRAP:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist test-api MAC:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist test-api MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist test-api PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist test-api SECURE_RANDOM:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist test-api SIGNATURE:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist test-api STREAM_CIPHER:Ljava/security/CryptoPrimitive;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 37
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string v1, "MESSAGE_DIGEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/CryptoPrimitive;->MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

    .line 42
    new-instance v1, Ljava/security/CryptoPrimitive;

    const-string v3, "SECURE_RANDOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/security/CryptoPrimitive;->SECURE_RANDOM:Ljava/security/CryptoPrimitive;

    .line 47
    new-instance v3, Ljava/security/CryptoPrimitive;

    const-string v5, "BLOCK_CIPHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/security/CryptoPrimitive;->BLOCK_CIPHER:Ljava/security/CryptoPrimitive;

    .line 52
    new-instance v5, Ljava/security/CryptoPrimitive;

    const-string v7, "STREAM_CIPHER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/security/CryptoPrimitive;->STREAM_CIPHER:Ljava/security/CryptoPrimitive;

    .line 57
    new-instance v7, Ljava/security/CryptoPrimitive;

    const-string v9, "MAC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljava/security/CryptoPrimitive;->MAC:Ljava/security/CryptoPrimitive;

    .line 62
    new-instance v9, Ljava/security/CryptoPrimitive;

    const-string v11, "KEY_WRAP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ljava/security/CryptoPrimitive;->KEY_WRAP:Ljava/security/CryptoPrimitive;

    .line 67
    new-instance v11, Ljava/security/CryptoPrimitive;

    const-string v13, "PUBLIC_KEY_ENCRYPTION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    .line 72
    new-instance v13, Ljava/security/CryptoPrimitive;

    const-string v15, "SIGNATURE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    .line 77
    new-instance v15, Ljava/security/CryptoPrimitive;

    const-string v14, "KEY_ENCAPSULATION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    .line 82
    new-instance v14, Ljava/security/CryptoPrimitive;

    const-string v12, "KEY_AGREEMENT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 33
    const/16 v12, 0xa

    new-array v12, v12, [Ljava/security/CryptoPrimitive;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Ljava/security/CryptoPrimitive;->$VALUES:[Ljava/security/CryptoPrimitive;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/security/CryptoPrimitive;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Ljava/security/CryptoPrimitive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/CryptoPrimitive;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/security/CryptoPrimitive;
    .registers 1

    .line 33
    sget-object v0, Ljava/security/CryptoPrimitive;->$VALUES:[Ljava/security/CryptoPrimitive;

    invoke-virtual {v0}, [Ljava/security/CryptoPrimitive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CryptoPrimitive;

    return-object v0
.end method
