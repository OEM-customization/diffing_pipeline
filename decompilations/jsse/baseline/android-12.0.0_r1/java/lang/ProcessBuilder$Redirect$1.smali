.class Ljava/lang/ProcessBuilder$Redirect$1;
.super Ljava/lang/ProcessBuilder$Redirect;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessBuilder$Redirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ProcessBuilder$Redirect;-><init>(Ljava/lang/ProcessBuilder$1;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 513
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect$1;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder$Redirect$Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api type()Ljava/lang/ProcessBuilder$Redirect$Type;
    .registers 2

    .line 512
    sget-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->PIPE:Ljava/lang/ProcessBuilder$Redirect$Type;

    return-object v0
.end method
