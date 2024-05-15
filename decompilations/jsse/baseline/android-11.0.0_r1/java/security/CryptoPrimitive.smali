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

.field public static final enum whitelist core-platform-api test-api BLOCK_CIPHER:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist core-platform-api test-api KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist core-platform-api test-api KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist core-platform-api test-api KEY_WRAP:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist core-platform-api test-api MAC:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist core-platform-api test-api MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist core-platform-api test-api PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist core-platform-api test-api SECURE_RANDOM:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist core-platform-api test-api SIGNATURE:Ljava/security/CryptoPrimitive;

.field public static final enum whitelist core-platform-api test-api STREAM_CIPHER:Ljava/security/CryptoPrimitive;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 37
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string v1, "MESSAGE_DIGEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/CryptoPrimitive;->MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

    .line 42
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string v1, "SECURE_RANDOM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/CryptoPrimitive;->SECURE_RANDOM:Ljava/security/CryptoPrimitive;

    .line 47
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string v1, "BLOCK_CIPHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/CryptoPrimitive;->BLOCK_CIPHER:Ljava/security/CryptoPrimitive;

    .line 52
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string v1, "STREAM_CIPHER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/CryptoPrimitive;->STREAM_CIPHER:Ljava/security/CryptoPrimitive;

    .line 57
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string v1, "MAC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/CryptoPrimitive;->MAC:Ljava/security/CryptoPrimitive;

    .line 62
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string v1, "KEY_WRAP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/CryptoPrimitive;->KEY_WRAP:Ljava/security/CryptoPrimitive;

    .line 67
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string v1, "PUBLIC_KEY_ENCRYPTION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    .line 72
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string v1, "SIGNATURE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    .line 77
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string v1, "KEY_ENCAPSULATION"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    .line 82
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string v1, "KEY_AGREEMENT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 33
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/security/CryptoPrimitive;

    sget-object v12, Ljava/security/CryptoPrimitive;->MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

    aput-object v12, v1, v2

    sget-object v2, Ljava/security/CryptoPrimitive;->SECURE_RANDOM:Ljava/security/CryptoPrimitive;

    aput-object v2, v1, v3

    sget-object v2, Ljava/security/CryptoPrimitive;->BLOCK_CIPHER:Ljava/security/CryptoPrimitive;

    aput-object v2, v1, v4

    sget-object v2, Ljava/security/CryptoPrimitive;->STREAM_CIPHER:Ljava/security/CryptoPrimitive;

    aput-object v2, v1, v5

    sget-object v2, Ljava/security/CryptoPrimitive;->MAC:Ljava/security/CryptoPrimitive;

    aput-object v2, v1, v6

    sget-object v2, Ljava/security/CryptoPrimitive;->KEY_WRAP:Ljava/security/CryptoPrimitive;

    aput-object v2, v1, v7

    sget-object v2, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    aput-object v2, v1, v8

    sget-object v2, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    aput-object v2, v1, v9

    sget-object v2, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Ljava/security/CryptoPrimitive;->$VALUES:[Ljava/security/CryptoPrimitive;

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

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/security/CryptoPrimitive;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Ljava/security/CryptoPrimitive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/CryptoPrimitive;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/security/CryptoPrimitive;
    .registers 1

    .line 33
    sget-object v0, Ljava/security/CryptoPrimitive;->$VALUES:[Ljava/security/CryptoPrimitive;

    invoke-virtual {v0}, [Ljava/security/CryptoPrimitive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CryptoPrimitive;

    return-object v0
.end method
