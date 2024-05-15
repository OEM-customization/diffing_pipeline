.class public final enum Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
.super Ljava/lang/Enum;
.source "OCSPResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/OCSPResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field public static final enum blacklist UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 124
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v1, "SUCCESSFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 125
    new-instance v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v3, "MALFORMED_REQUEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 126
    new-instance v3, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v5, "INTERNAL_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 127
    new-instance v5, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v7, "TRY_LATER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 128
    new-instance v7, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v9, "UNUSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 129
    new-instance v9, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v11, "SIG_REQUIRED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 130
    new-instance v11, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    const-string v13, "UNAUTHORIZED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 123
    const/4 v13, 0x7

    new-array v13, v13, [Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->$VALUES:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 123
    const-class v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    return-object v0
.end method

.method public static blacklist values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .registers 1

    .line 123
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->$VALUES:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v0}, [Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    return-object v0
.end method
