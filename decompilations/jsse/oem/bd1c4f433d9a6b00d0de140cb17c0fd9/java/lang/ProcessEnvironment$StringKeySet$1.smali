.class Ljava/lang/ProcessEnvironment$StringKeySet$1;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessEnvironment$StringKeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/lang/ProcessEnvironment$StringKeySet;


# direct methods
.method constructor <init>(Ljava/lang/ProcessEnvironment$StringKeySet;)V
    .registers 3
    .param p1, "this$1"    # Ljava/lang/ProcessEnvironment$StringKeySet;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringKeySet$1;->this$1:Ljava/lang/ProcessEnvironment$StringKeySet;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet$1;->this$1:Ljava/lang/ProcessEnvironment$StringKeySet;

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringKeySet;->-get0(Ljava/lang/ProcessEnvironment$StringKeySet;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet$1;->i:Ljava/util/Iterator;

    .line 1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 401
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringKeySet$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessEnvironment$Variable;

    invoke-virtual {v0}, Ljava/lang/ProcessEnvironment$Variable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
