.class Ljava/text/AttributeEntry;
.super Ljava/lang/Object;
.source "AttributedString.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/text/AttributedCharacterIterator$Attribute;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist key:Ljava/text/AttributedCharacterIterator$Attribute;

.field private blacklist value:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .registers 3
    .param p1, "key"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1101
    iput-object p1, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    .line 1102
    iput-object p2, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    .line 1103
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1106
    instance-of v0, p1, Ljava/text/AttributeEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1107
    return v1

    .line 1109
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/text/AttributeEntry;

    .line 1110
    .local v0, "other":Ljava/text/AttributeEntry;
    iget-object v2, v0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v3, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {v2, v3}, Ljava/text/AttributedCharacterIterator$Attribute;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1c

    iget-object v2, v0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_26

    goto :goto_24

    :cond_1c
    iget-object v3, v0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    .line 1111
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    :goto_24
    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    nop

    .line 1110
    :goto_27
    return v1
.end method

.method public bridge synthetic whitelist test-api getKey()Ljava/lang/Object;
    .registers 2

    .line 1095
    invoke-virtual {p0}, Ljava/text/AttributeEntry;->getKey()Ljava/text/AttributedCharacterIterator$Attribute;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey()Ljava/text/AttributedCharacterIterator$Attribute;
    .registers 2

    .line 1115
    iget-object v0, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 2

    .line 1119
    iget-object v0, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1127
    iget-object v0, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {v0}, Ljava/text/AttributedCharacterIterator$Attribute;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_10
    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 1123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {v1}, Ljava/text/AttributedCharacterIterator$Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
