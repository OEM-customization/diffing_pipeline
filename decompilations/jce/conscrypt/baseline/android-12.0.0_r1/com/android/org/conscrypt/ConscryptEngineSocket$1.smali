.class Lcom/android/org/conscrypt/ConscryptEngineSocket$1;
.super Lcom/android/org/conscrypt/HandshakeListener;
.source "ConscryptEngineSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$socket:Lcom/android/org/conscrypt/ConscryptEngineSocket;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$1;->val$socket:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-direct {p0}, Lcom/android/org/conscrypt/HandshakeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onHandshakeFinished()V
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$1;->val$socket:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket;->onHandshakeFinished()V
    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$000(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    .line 128
    return-void
.end method
