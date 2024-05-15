.class Lcom/android/org/conscrypt/AbstractSessionContext$2;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/AbstractSessionContext;->getIds()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<[B>;"
    }
.end annotation


# instance fields
.field private next:Lcom/android/org/conscrypt/SslSessionWrapper;

.field final synthetic this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/AbstractSessionContext;Ljava/util/Iterator;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/conscrypt/AbstractSessionContext;

    .prologue
    .line 1
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0xc
    nop

    #disallowed odex opcode
    #iput-object-quick p2, p0, field@0x10
    nop

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    if-eqz v1, :cond_7

    .line 88
    return v2

    .line 90
    :cond_7
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x10
    nop

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 91
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x10
    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SslSessionWrapper;

    .line 92
    .local v0, "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@18
    nop

    move-result v1

    if-eqz v1, :cond_7

    .line 93
    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x8
    nop

    .line 94
    return v2

    .line 97
    .end local v0    # "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    :cond_20
    #disallowed odex opcode
    #iput-object-quick v3, p0, field@0x8
    nop

    .line 98
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 101
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@13
    nop

    move-result-object v0

    return-object v0
.end method

.method public nextElement()[B
    .registers 3

    .prologue
    .line 103
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    move-result v1

    if-eqz v1, :cond_10

    .line 104
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@12
    nop

    move-result-object v0

    .line 105
    .local v0, "id":[B
    const/4 v1, 0x0

    #disallowed odex opcode
    #iput-object-quick v1, p0, field@0x8
    nop

    .line 106
    return-object v0

    .line 108
    .end local v0    # "id":[B
    :cond_10
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
