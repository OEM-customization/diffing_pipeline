.class final Lsun/net/NetworkClient$1;
.super Ljava/lang/Object;
.source "NetworkClient.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/NetworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$encs:[Ljava/lang/String;

.field final synthetic val$vals:[I


# direct methods
.method constructor <init>([I[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lsun/net/NetworkClient$1;->val$vals:[I

    iput-object p2, p0, Lsun/net/NetworkClient$1;->val$encs:[Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lsun/net/NetworkClient$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lsun/net/NetworkClient$1;->val$vals:[I

    const-string/jumbo v1, "sun.net.client.defaultReadTimeout"

    invoke-static {v1, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v3

    .line 75
    iget-object v0, p0, Lsun/net/NetworkClient$1;->val$vals:[I

    const-string/jumbo v1, "sun.net.client.defaultConnectTimeout"

    invoke-static {v1, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 76
    iget-object v0, p0, Lsun/net/NetworkClient$1;->val$encs:[Ljava/lang/String;

    const-string/jumbo v1, "file.encoding"

    const-string/jumbo v2, "ISO8859_1"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method
