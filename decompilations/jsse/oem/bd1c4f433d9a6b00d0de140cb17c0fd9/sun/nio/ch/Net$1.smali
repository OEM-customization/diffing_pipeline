.class final Lsun/nio/ch/Net$1;
.super Ljava/lang/Object;
.source "Net.java"

# interfaces
.implements Ljava/net/ProtocolFamily;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Net;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const-string/jumbo v0, "UNSPEC"

    return-object v0
.end method
