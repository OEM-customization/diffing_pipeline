.class final Ljava/util/LinkedHashMap$LinkedKeyIterator;
.super Ljava/util/LinkedHashMap$LinkedHashIterator;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LinkedKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>.",
        "LinkedHashIterator;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedHashMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;

    .line 778
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeyIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeyIterator;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedKeyIterator;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/LinkedHashMap;)V

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

    .line 780
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeyIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeyIterator;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedKeyIterator;->nextNode()Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method