.class public abstract Ljava/nio/channels/MembershipKey;
.super Ljava/lang/Object;
.source "MembershipKey.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public abstract block(Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract channel()Ljava/nio/channels/MulticastChannel;
.end method

.method public abstract drop()V
.end method

.method public abstract group()Ljava/net/InetAddress;
.end method

.method public abstract isValid()Z
.end method

.method public abstract networkInterface()Ljava/net/NetworkInterface;
.end method

.method public abstract sourceAddress()Ljava/net/InetAddress;
.end method

.method public abstract unblock(Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
.end method
