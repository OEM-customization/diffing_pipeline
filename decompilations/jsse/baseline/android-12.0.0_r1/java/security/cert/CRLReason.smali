.class public final enum Ljava/security/cert/CRLReason;
.super Ljava/lang/Enum;
.source "CRLReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/security/cert/CRLReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api AA_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api CA_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api KEY_COMPROMISE:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api SUPERSEDED:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api UNSPECIFIED:Ljava/security/cert/CRLReason;

.field public static final enum whitelist test-api UNUSED:Ljava/security/cert/CRLReason;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 44
    new-instance v0, Ljava/security/cert/CRLReason;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    .line 51
    new-instance v1, Ljava/security/cert/CRLReason;

    const-string v3, "KEY_COMPROMISE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/security/cert/CRLReason;->KEY_COMPROMISE:Ljava/security/cert/CRLReason;

    .line 58
    new-instance v3, Ljava/security/cert/CRLReason;

    const-string v5, "CA_COMPROMISE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/security/cert/CRLReason;->CA_COMPROMISE:Ljava/security/cert/CRLReason;

    .line 64
    new-instance v5, Ljava/security/cert/CRLReason;

    const-string v7, "AFFILIATION_CHANGED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/security/cert/CRLReason;->AFFILIATION_CHANGED:Ljava/security/cert/CRLReason;

    .line 69
    new-instance v7, Ljava/security/cert/CRLReason;

    const-string v9, "SUPERSEDED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljava/security/cert/CRLReason;->SUPERSEDED:Ljava/security/cert/CRLReason;

    .line 74
    new-instance v9, Ljava/security/cert/CRLReason;

    const-string v11, "CESSATION_OF_OPERATION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ljava/security/cert/CRLReason;->CESSATION_OF_OPERATION:Ljava/security/cert/CRLReason;

    .line 79
    new-instance v11, Ljava/security/cert/CRLReason;

    const-string v13, "CERTIFICATE_HOLD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ljava/security/cert/CRLReason;->CERTIFICATE_HOLD:Ljava/security/cert/CRLReason;

    .line 84
    new-instance v13, Ljava/security/cert/CRLReason;

    const-string v15, "UNUSED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ljava/security/cert/CRLReason;->UNUSED:Ljava/security/cert/CRLReason;

    .line 90
    new-instance v15, Ljava/security/cert/CRLReason;

    const-string v14, "REMOVE_FROM_CRL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ljava/security/cert/CRLReason;->REMOVE_FROM_CRL:Ljava/security/cert/CRLReason;

    .line 96
    new-instance v14, Ljava/security/cert/CRLReason;

    const-string v12, "PRIVILEGE_WITHDRAWN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ljava/security/cert/CRLReason;->PRIVILEGE_WITHDRAWN:Ljava/security/cert/CRLReason;

    .line 103
    new-instance v12, Ljava/security/cert/CRLReason;

    const-string v10, "AA_COMPROMISE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Ljava/security/cert/CRLReason;-><init>(Ljava/lang/String;I)V

    sput-object v12, Ljava/security/cert/CRLReason;->AA_COMPROMISE:Ljava/security/cert/CRLReason;

    .line 39
    const/16 v10, 0xb

    new-array v10, v10, [Ljava/security/cert/CRLReason;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Ljava/security/cert/CRLReason;->$VALUES:[Ljava/security/cert/CRLReason;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/security/cert/CRLReason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Ljava/security/cert/CRLReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/security/cert/CRLReason;
    .registers 1

    .line 39
    sget-object v0, Ljava/security/cert/CRLReason;->$VALUES:[Ljava/security/cert/CRLReason;

    invoke-virtual {v0}, [Ljava/security/cert/CRLReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/CRLReason;

    return-object v0
.end method
