.class public final enum Ljava/lang/ProcessBuilder$Redirect$Type;
.super Ljava/lang/Enum;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessBuilder$Redirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/ProcessBuilder$Redirect$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum whitelist core-platform-api test-api APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum whitelist core-platform-api test-api INHERIT:Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum whitelist core-platform-api test-api PIPE:Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum whitelist core-platform-api test-api READ:Ljava/lang/ProcessBuilder$Redirect$Type;

.field public static final enum whitelist core-platform-api test-api WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 467
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    const-string v1, "PIPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->PIPE:Ljava/lang/ProcessBuilder$Redirect$Type;

    .line 472
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    const-string v1, "INHERIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->INHERIT:Ljava/lang/ProcessBuilder$Redirect$Type;

    .line 478
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    const-string v1, "READ"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    .line 484
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    const-string v1, "WRITE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;

    .line 490
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    const-string v1, "APPEND"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljava/lang/ProcessBuilder$Redirect$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

    .line 463
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/ProcessBuilder$Redirect$Type;

    sget-object v7, Ljava/lang/ProcessBuilder$Redirect$Type;->PIPE:Ljava/lang/ProcessBuilder$Redirect$Type;

    aput-object v7, v1, v2

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect$Type;->INHERIT:Ljava/lang/ProcessBuilder$Redirect$Type;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect$Type;->WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->$VALUES:[Ljava/lang/ProcessBuilder$Redirect$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 463
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/lang/ProcessBuilder$Redirect$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 463
    const-class v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessBuilder$Redirect$Type;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/lang/ProcessBuilder$Redirect$Type;
    .registers 1

    .line 463
    sget-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->$VALUES:[Ljava/lang/ProcessBuilder$Redirect$Type;

    invoke-virtual {v0}, [Ljava/lang/ProcessBuilder$Redirect$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ProcessBuilder$Redirect$Type;

    return-object v0
.end method
