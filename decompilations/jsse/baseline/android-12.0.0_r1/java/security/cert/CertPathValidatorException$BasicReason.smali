.class public final enum Ljava/security/cert/CertPathValidatorException$BasicReason;
.super Ljava/lang/Enum;
.source "CertPathValidatorException.java"

# interfaces
.implements Ljava/security/cert/CertPathValidatorException$Reason;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/cert/CertPathValidatorException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BasicReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/security/cert/CertPathValidatorException$BasicReason;",
        ">;",
        "Ljava/security/cert/CertPathValidatorException$Reason;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum whitelist test-api ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum whitelist test-api EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum whitelist test-api INVALID_SIGNATURE:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum whitelist test-api NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum whitelist test-api REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum whitelist test-api UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

.field public static final enum whitelist test-api UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 264
    new-instance v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 269
    new-instance v1, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v3, "EXPIRED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 274
    new-instance v3, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v5, "NOT_YET_VALID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/security/cert/CertPathValidatorException$BasicReason;->NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 279
    new-instance v5, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v7, "REVOKED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 284
    new-instance v7, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v9, "UNDETERMINED_REVOCATION_STATUS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 289
    new-instance v9, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v11, "INVALID_SIGNATURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ljava/security/cert/CertPathValidatorException$BasicReason;->INVALID_SIGNATURE:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 294
    new-instance v11, Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v13, "ALGORITHM_CONSTRAINED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/security/cert/CertPathValidatorException$BasicReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 260
    const/4 v13, 0x7

    new-array v13, v13, [Ljava/security/cert/CertPathValidatorException$BasicReason;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Ljava/security/cert/CertPathValidatorException$BasicReason;->$VALUES:[Ljava/security/cert/CertPathValidatorException$BasicReason;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/security/cert/CertPathValidatorException$BasicReason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 260
    const-class v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertPathValidatorException$BasicReason;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/security/cert/CertPathValidatorException$BasicReason;
    .registers 1

    .line 260
    sget-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->$VALUES:[Ljava/security/cert/CertPathValidatorException$BasicReason;

    invoke-virtual {v0}, [Ljava/security/cert/CertPathValidatorException$BasicReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/CertPathValidatorException$BasicReason;

    return-object v0
.end method
