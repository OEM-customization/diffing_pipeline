.class Ljava/util/concurrent/LinkedBlockingDeque$Itr;
.super Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingDeque",
        "<TE;>.AbstractItr;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/LinkedBlockingDeque;)V
    .registers 2

    .prologue
    .line 1118
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$Itr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/LinkedBlockingDeque;Ljava/util/concurrent/LinkedBlockingDeque$Itr;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/concurrent/LinkedBlockingDeque;
    .param p2, "-this1"    # Ljava/util/concurrent/LinkedBlockingDeque$Itr;

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$Itr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.Itr;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$Itr;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method firstNode()Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1119
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$Itr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    return-object v0
.end method

.method nextNode(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1120
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$Itr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.Itr;"
    .local p1, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    return-object v0
.end method
