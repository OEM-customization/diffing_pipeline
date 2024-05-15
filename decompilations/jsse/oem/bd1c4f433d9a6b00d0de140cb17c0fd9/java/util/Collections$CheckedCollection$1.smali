.class Ljava/util/Collections$CheckedCollection$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$CheckedCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/Collections$CheckedCollection;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Collections$CheckedCollection;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 1
    .local p1, "this$1":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iput-object p1, p0, Ljava/util/Collections$CheckedCollection$1;->this$1:Ljava/util/Collections$CheckedCollection;

    iput-object p2, p0, Ljava/util/Collections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    .line 3118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 3119
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 3120
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 3121
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
