.class Lsun/net/DefaultProgressMeteringPolicy;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"

# interfaces
.implements Lsun/net/ProgressMeteringPolicy;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgressUpdateThreshold()I
    .registers 2

    .prologue
    .line 255
    const/16 v0, 0x2000

    return v0
.end method

.method public shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method
