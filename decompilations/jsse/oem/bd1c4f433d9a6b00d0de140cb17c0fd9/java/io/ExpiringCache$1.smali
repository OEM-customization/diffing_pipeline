.class Ljava/io/ExpiringCache$1;
.super Ljava/util/LinkedHashMap;
.source "ExpiringCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ExpiringCache;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/io/ExpiringCache$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/io/ExpiringCache;


# direct methods
.method constructor <init>(Ljava/io/ExpiringCache;)V
    .registers 2
    .param p1, "this$0"    # Ljava/io/ExpiringCache;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/io/ExpiringCache$1;->this$0:Ljava/io/ExpiringCache;

    .line 67
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/ExpiringCache$Entry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/ExpiringCache$Entry;>;"
    invoke-virtual {p0}, Ljava/io/ExpiringCache$1;->size()I

    move-result v0

    iget-object v1, p0, Ljava/io/ExpiringCache$1;->this$0:Ljava/io/ExpiringCache;

    invoke-static {v1}, Ljava/io/ExpiringCache;->-get0(Ljava/io/ExpiringCache;)I

    move-result v1

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
