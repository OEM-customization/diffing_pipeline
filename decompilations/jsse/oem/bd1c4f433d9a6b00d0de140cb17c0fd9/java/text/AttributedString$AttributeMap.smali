.class final Ljava/text/AttributedString$AttributeMap;
.super Ljava/util/AbstractMap;
.source "AttributedString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/text/AttributedCharacterIterator$Attribute;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field beginIndex:I

.field endIndex:I

.field runIndex:I

.field final synthetic this$0:Ljava/text/AttributedString;


# direct methods
.method constructor <init>(Ljava/text/AttributedString;III)V
    .registers 5
    .param p1, "this$0"    # Ljava/text/AttributedString;
    .param p2, "runIndex"    # I
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .prologue
    .line 1061
    iput-object p1, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1062
    iput p2, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    .line 1063
    iput p3, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    .line 1064
    iput p4, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    .line 1065
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1068
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1069
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;>;"
    iget-object v7, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    monitor-enter v7

    .line 1070
    :try_start_8
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v6, v6, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v4

    .line 1071
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v4, :cond_52

    .line 1072
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v6, v6, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v6, v6, v8

    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 1073
    .local v2, "key":Ljava/text/AttributedCharacterIterator$Attribute;
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v6, v6, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v6, v6, v8

    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1074
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Ljava/text/Annotation;

    if-eqz v6, :cond_46

    .line 1075
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    .line 1076
    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    iget v9, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    iget v10, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    .line 1075
    invoke-static {v6, v2, v8, v9, v10}, Ljava/text/AttributedString;->-wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v5

    .line 1077
    if-nez v5, :cond_46

    .line 1071
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1082
    :cond_46
    new-instance v0, Ljava/text/AttributeEntry;

    invoke-direct {v0, v2, v5}, Ljava/text/AttributeEntry;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 1083
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_4f

    goto :goto_43

    .line 1069
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v4    # "size":I
    .end local v5    # "value":Ljava/lang/Object;
    :catchall_4f
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_52
    monitor-exit v7

    .line 1086
    return-object v3
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1090
    iget-object v0, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    check-cast p1, Ljava/text/AttributedCharacterIterator$Attribute;

    .end local p1    # "key":Ljava/lang/Object;
    iget v1, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    iget v2, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    iget v3, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    invoke-static {v0, p1, v1, v2, v3}, Ljava/text/AttributedString;->-wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
