.class public final enum Ljava/security/cert/PKIXRevocationChecker$Option;
.super Ljava/lang/Enum;
.source "PKIXRevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/cert/PKIXRevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/security/cert/PKIXRevocationChecker$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum whitelist core-platform-api test-api NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum whitelist core-platform-api test-api ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum whitelist core-platform-api test-api PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

.field public static final enum whitelist core-platform-api test-api SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 287
    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    const-string v1, "ONLY_END_ENTITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    .line 293
    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    const-string v1, "PREFER_CRLS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    .line 297
    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    const-string v1, "NO_FALLBACK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    .line 315
    new-instance v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    const-string v1, "SOFT_FAIL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava/security/cert/PKIXRevocationChecker$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    .line 283
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/security/cert/PKIXRevocationChecker$Option;

    sget-object v6, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    aput-object v6, v1, v2

    sget-object v2, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    aput-object v2, v1, v3

    sget-object v2, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->$VALUES:[Ljava/security/cert/PKIXRevocationChecker$Option;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/security/cert/PKIXRevocationChecker$Option;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 283
    const-class v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXRevocationChecker$Option;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/security/cert/PKIXRevocationChecker$Option;
    .registers 1

    .line 283
    sget-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->$VALUES:[Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v0}, [Ljava/security/cert/PKIXRevocationChecker$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/PKIXRevocationChecker$Option;

    return-object v0
.end method
