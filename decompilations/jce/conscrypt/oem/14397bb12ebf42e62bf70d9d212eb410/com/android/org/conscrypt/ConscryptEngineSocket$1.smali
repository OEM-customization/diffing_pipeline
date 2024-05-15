.class final Lcom/android/org/conscrypt/ConscryptEngineSocket$1;
.super Lcom/android/org/conscrypt/HandshakeListener;
.source "ConscryptEngineSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$socket:Lcom/android/org/conscrypt/ConscryptEngineSocket;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 2

    .prologue
    .line 1
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x8
    nop

    .line 97
    invoke-direct {p0}, Lcom/android/org/conscrypt/HandshakeListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onHandshakeFinished()V
    .registers 2

    .prologue
    .line 104
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-wrap3(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    .line 105
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
