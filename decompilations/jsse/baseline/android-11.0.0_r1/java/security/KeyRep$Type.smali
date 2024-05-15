.class public final enum Ljava/security/KeyRep$Type;
.super Ljava/lang/Enum;
.source "KeyRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyRep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/security/KeyRep$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/security/KeyRep$Type;

.field public static final enum whitelist core-platform-api test-api PRIVATE:Ljava/security/KeyRep$Type;

.field public static final enum whitelist core-platform-api test-api PUBLIC:Ljava/security/KeyRep$Type;

.field public static final enum whitelist core-platform-api test-api SECRET:Ljava/security/KeyRep$Type;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 70
    new-instance v0, Ljava/security/KeyRep$Type;

    const-string v1, "SECRET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/security/KeyRep$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/KeyRep$Type;->SECRET:Ljava/security/KeyRep$Type;

    .line 73
    new-instance v0, Ljava/security/KeyRep$Type;

    const-string v1, "PUBLIC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/security/KeyRep$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/KeyRep$Type;->PUBLIC:Ljava/security/KeyRep$Type;

    .line 76
    new-instance v0, Ljava/security/KeyRep$Type;

    const-string v1, "PRIVATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/security/KeyRep$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/KeyRep$Type;->PRIVATE:Ljava/security/KeyRep$Type;

    .line 67
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/security/KeyRep$Type;

    sget-object v5, Ljava/security/KeyRep$Type;->SECRET:Ljava/security/KeyRep$Type;

    aput-object v5, v1, v2

    sget-object v2, Ljava/security/KeyRep$Type;->PUBLIC:Ljava/security/KeyRep$Type;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Ljava/security/KeyRep$Type;->$VALUES:[Ljava/security/KeyRep$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/security/KeyRep$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 67
    const-class v0, Ljava/security/KeyRep$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/KeyRep$Type;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/security/KeyRep$Type;
    .registers 1

    .line 67
    sget-object v0, Ljava/security/KeyRep$Type;->$VALUES:[Ljava/security/KeyRep$Type;

    invoke-virtual {v0}, [Ljava/security/KeyRep$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/KeyRep$Type;

    return-object v0
.end method
