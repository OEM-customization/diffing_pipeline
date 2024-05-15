.class final Ljava/util/HashMap$KeyIterator;
.super Ljava/util/HashMap$HashIterator;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "TK;TV;>.HashIterator;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/HashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/HashMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/HashMap;

    .line 1463
    .local p0, "this":Ljava/util/HashMap$KeyIterator;, "Ljava/util/HashMap<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Ljava/util/HashMap$KeyIterator;->this$0:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Ljava/util/HashMap$HashIterator;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1465
    .local p0, "this":Ljava/util/HashMap$KeyIterator;, "Ljava/util/HashMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Ljava/util/HashMap$KeyIterator;->nextNode()Ljava/util/HashMap$Node;

    move-result-object v0

    iget-object v0, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method
