.class Ljava/util/Collections$UnmodifiableCollection$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$UnmodifiableCollection;->iterator()Ljava/util/Iterator;
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
.field private final i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/util/Collections$UnmodifiableCollection;


# direct methods
.method constructor <init>(Ljava/util/Collections$UnmodifiableCollection;)V
    .registers 3

    .prologue
    .line 1
    .local p1, "this$1":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableCollection$1;->this$1:Ljava/util/Collections$UnmodifiableCollection;

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection$1;->this$1:Ljava/util/Collections$UnmodifiableCollection;

    iget-object v0, v0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Collections$UnmodifiableCollection$1;->i:Ljava/util/Iterator;

    .line 1
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1091
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection$1;->i:Ljava/util/Iterator;

    invoke-interface {v0, p1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1092
    return-void
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 1083
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection$1;->i:Ljava/util/Iterator;

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
    .line 1084
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 1086
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method