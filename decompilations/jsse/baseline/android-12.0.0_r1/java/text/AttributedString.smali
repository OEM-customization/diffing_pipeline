.class public Ljava/text/AttributedString;
.super Ljava/lang/Object;
.source "AttributedString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/AttributedString$AttributeMap;,
        Ljava/text/AttributedString$AttributedStringIterator;
    }
.end annotation


# static fields
.field private static final greylist-max-o ARRAY_SIZE_INCREMENT:I = 0xa


# instance fields
.field greylist-max-o runArraySize:I

.field greylist-max-o runAttributeValues:[Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o runAttributes:[Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Vector<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o runCount:I

.field greylist-max-o runStarts:[I

.field greylist-max-o text:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    if-eqz p1, :cond_8

    .line 129
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 130
    return-void

    .line 127
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)V"
        }
    .end annotation

    .line 144
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    if-eqz p1, :cond_60

    if-eqz p2, :cond_60

    .line 148
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 151
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 152
    return-void

    .line 153
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t add attribute to 0-length text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1e
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    .line 157
    .local v0, "attributeCount":I
    if-lez v0, :cond_5f

    .line 158
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 159
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    .line 160
    .local v1, "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    .line 161
    .local v2, "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 162
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v2, v3, v4

    .line 164
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 165
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;>;"
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 166
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 167
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 168
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 169
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    goto :goto_42

    .line 171
    .end local v1    # "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v2    # "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;>;"
    :cond_5f
    return-void

    .line 146
    .end local v0    # "attributeCount":I
    :cond_60
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/text/AttributedCharacterIterator;)V
    .registers 5
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;

    .line 183
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V

    .line 184
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/text/AttributedCharacterIterator;II)V
    .registers 5
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V

    .line 207
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V
    .registers 16
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    if-eqz p1, :cond_bb

    .line 240
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v0

    .line 241
    .local v0, "textBeginIndex":I
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v1

    .line 242
    .local v1, "textEndIndex":I
    if-lt p2, v0, :cond_b3

    if-gt p3, v1, :cond_b3

    if-gt p2, p3, :cond_b3

    .line 246
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 247
    .local v2, "textBuffer":Ljava/lang/StringBuffer;
    invoke-interface {p1, p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 248
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v3

    .local v3, "c":C
    :goto_1f
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v4

    if-ge v4, p3, :cond_2d

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v3

    goto :goto_1f

    .line 250
    .end local v3    # "c":C
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 252
    if-ne p2, p3, :cond_36

    .line 253
    return-void

    .line 256
    :cond_36
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 257
    .local v3, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    if-nez p4, :cond_45

    .line 258
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_58

    .line 260
    :cond_45
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_46
    array-length v5, p4

    if-ge v4, v5, :cond_51

    .line 261
    aget-object v5, p4, v4

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 262
    .end local v4    # "i":I
    :cond_51
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 264
    :goto_58
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 265
    return-void

    .line 270
    :cond_5f
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 271
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :goto_63
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 272
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 273
    .local v5, "attributeKey":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 274
    :goto_72
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v6

    if-ge v6, p3, :cond_b1

    .line 275
    invoke-interface {p1, v5}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v6

    .line 276
    .local v6, "start":I
    invoke-interface {p1, v5}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v7

    .line 277
    .local v7, "limit":I
    invoke-interface {p1, v5}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v8

    .line 279
    .local v8, "value":Ljava/lang/Object;
    if-eqz v8, :cond_ad

    .line 280
    instance-of v9, v8, Ljava/text/Annotation;

    if-eqz v9, :cond_99

    .line 281
    if-lt v6, p2, :cond_96

    if-gt v7, p3, :cond_96

    .line 282
    sub-int v9, v6, p2

    sub-int v10, v7, p2

    invoke-virtual {p0, v5, v8, v9, v10}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_ad

    .line 284
    :cond_96
    if-le v7, p3, :cond_ad

    .line 285
    goto :goto_b1

    .line 290
    :cond_99
    if-lt v6, p3, :cond_9c

    .line 291
    goto :goto_b1

    .line 292
    :cond_9c
    if-le v7, p2, :cond_ad

    .line 294
    if-ge v6, p2, :cond_a1

    .line 295
    move v6, p2

    .line 296
    :cond_a1
    if-le v7, p3, :cond_a4

    .line 297
    move v7, p3

    .line 298
    :cond_a4
    if-eq v6, v7, :cond_ad

    .line 299
    sub-int v9, v6, p2

    sub-int v10, v7, p2

    invoke-virtual {p0, v5, v8, v9, v10}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 304
    :cond_ad
    :goto_ad
    invoke-interface {p1, v7}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 305
    .end local v6    # "start":I
    .end local v7    # "limit":I
    .end local v8    # "value":Ljava/lang/Object;
    goto :goto_72

    .line 306
    .end local v5    # "attributeKey":Ljava/text/AttributedCharacterIterator$Attribute;
    :cond_b1
    :goto_b1
    goto :goto_63

    .line 307
    :cond_b2
    return-void

    .line 243
    .end local v2    # "textBuffer":Ljava/lang/StringBuffer;
    .end local v3    # "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_b3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid substring range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    .end local v0    # "textBeginIndex":I
    .end local v1    # "textEndIndex":I
    :cond_bb
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method constructor greylist-max-o <init>([Ljava/text/AttributedCharacterIterator;)V
    .registers 12
    .param p1, "iterators"    # [Ljava/text/AttributedCharacterIterator;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_5d

    .line 79
    array-length v0, p1

    if-nez v0, :cond_d

    .line 80
    const-string v0, ""

    iput-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    goto :goto_5c

    .line 84
    :cond_d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "counter":I
    :goto_13
    array-length v2, p1

    if-ge v1, v2, :cond_1e

    .line 86
    aget-object v2, p1, v1

    invoke-direct {p0, v0, v2}, Ljava/text/AttributedString;->appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 89
    .end local v1    # "counter":I
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5c

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 97
    .local v2, "last":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "counter":I
    :goto_2d
    array-length v4, p1

    if-ge v3, v4, :cond_5c

    .line 98
    aget-object v4, p1, v3

    .line 99
    .local v4, "iterator":Ljava/text/AttributedCharacterIterator;
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v5

    .line 100
    .local v5, "start":I
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v6

    .line 101
    .local v6, "end":I
    move v7, v5

    .line 103
    .local v7, "index":I
    :goto_3b
    if-ge v7, v6, :cond_56

    .line 104
    invoke-interface {v4, v7}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 106
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v8

    .line 108
    .local v8, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    invoke-static {v2, v8}, Ljava/text/AttributedString;->mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 109
    sub-int v9, v7, v5

    add-int/2addr v9, v1

    invoke-direct {p0, v8, v9}, Ljava/text/AttributedString;->setAttributes(Ljava/util/Map;I)V

    .line 111
    :cond_50
    move-object v2, v8

    .line 112
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v7

    .line 113
    .end local v8    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    goto :goto_3b

    .line 114
    :cond_56
    sub-int v8, v6, v5

    add-int/2addr v1, v8

    .line 97
    .end local v4    # "iterator":Ljava/text/AttributedCharacterIterator;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 118
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "offset":I
    .end local v2    # "last":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    .end local v3    # "counter":I
    :cond_5c
    :goto_5c
    return-void

    .line 77
    :cond_5d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterators must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist access$000(Ljava/text/AttributedString;I)C
    .registers 3
    .param p0, "x0"    # Ljava/text/AttributedString;
    .param p1, "x1"    # I

    .line 50
    invoke-direct {p0, p1}, Ljava/text/AttributedString;->charAt(I)C

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Ljava/text/AttributedString;
    .param p1, "x1"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "x2"    # I

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 50
    invoke-static {p0, p1}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$300(Ljava/text/AttributedString;Ljava/util/Set;II)Z
    .registers 5
    .param p0, "x0"    # Ljava/text/AttributedString;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Ljava/text/AttributedString;->attributeValuesMatch(Ljava/util/Set;II)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$400(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .registers 6
    .param p0, "x0"    # Ljava/text/AttributedString;
    .param p1, "x1"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized greylist-max-o addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .registers 7
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    monitor-enter p0

    .line 406
    :try_start_1
    iget v0, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v0, :cond_8

    .line 407
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 411
    .end local p0    # "this":Ljava/text/AttributedString;
    :cond_8
    invoke-direct {p0, p3}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v0

    .line 412
    .local v0, "beginRunIndex":I
    invoke-direct {p0, p4}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v1

    .line 414
    .local v1, "endRunIndex":I
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/text/AttributedString;->addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 415
    monitor-exit p0

    return-void

    .line 405
    .end local v0    # "beginRunIndex":I
    .end local v1    # "endRunIndex":I
    .end local p1    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "beginIndex":I
    .end local p4    # "endIndex":I
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private greylist-max-o addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .registers 10
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginRunIndex"    # I
    .param p4, "endRunIndex"    # I

    .line 523
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_57

    .line 524
    const/4 v1, -0x1

    .line 525
    .local v1, "keyValueIndex":I
    iget-object v2, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v3, v2, v0

    if-nez v3, :cond_1d

    .line 526
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 527
    .local v2, "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 528
    .local v3, "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v2, v4, v0

    .line 529
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v3, v4, v0

    .line 530
    .end local v2    # "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v3    # "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    goto :goto_23

    .line 532
    :cond_1d
    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 535
    :goto_23
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4d

    .line 537
    iget-object v2, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 538
    .local v2, "oldSize":I
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 540
    :try_start_35
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_3d

    .line 545
    goto :goto_4c

    .line 542
    :catch_3d
    move-exception v3

    .line 543
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Ljava/util/Vector;->setSize(I)V

    .line 544
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Ljava/util/Vector;->setSize(I)V

    .line 546
    .end local v2    # "oldSize":I
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4c
    goto :goto_54

    .line 548
    :cond_4d
    iget-object v2, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 523
    .end local v1    # "keyValueIndex":I
    :goto_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 551
    .end local v0    # "i":I
    :cond_57
    return-void
.end method

.method private final greylist-max-o appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .registers 6
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "iterator"    # Ljava/text/CharacterIterator;

    .line 691
    invoke-interface {p2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 692
    .local v0, "index":I
    invoke-interface {p2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    .line 694
    .local v1, "end":I
    :goto_8
    if-ge v0, v1, :cond_18

    .line 695
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .local v2, "index":I
    invoke-interface {p2, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 696
    invoke-interface {p2}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_8

    .line 698
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_18
    return-void
.end method

.method private greylist-max-o attributeValuesMatch(Ljava/util/Set;II)Z
    .registers 8
    .param p2, "runIndex1"    # I
    .param p3, "runIndex2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;II)Z"
        }
    .end annotation

    .line 666
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 667
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 668
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 669
    .local v1, "key":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-direct {p0, v1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, p3}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 670
    const/4 v2, 0x0

    return v2

    .line 672
    .end local v1    # "key":Ljava/text/AttributedCharacterIterator$Attribute;
    :cond_20
    goto :goto_4

    .line 673
    :cond_21
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .line 608
    iget-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private final greylist-max-o createRunAttributeDataVectors()V
    .registers 5

    .line 419
    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 422
    .local v1, "newRunStarts":[I
    new-array v2, v0, [Ljava/util/Vector;

    .line 425
    .local v2, "newRunAttributes":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-array v3, v0, [Ljava/util/Vector;

    .line 427
    .local v3, "newRunAttributeValues":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/lang/Object;>;"
    iput-object v1, p0, Ljava/text/AttributedString;->runStarts:[I

    .line 428
    iput-object v2, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    .line 429
    iput-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    .line 430
    iput v0, p0, Ljava/text/AttributedString;->runArraySize:I

    .line 431
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/AttributedString;->runCount:I

    .line 432
    return-void
.end method

.method private final greylist-max-o ensureRunBreak(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 436
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    move-result v0

    return v0
.end method

.method private final greylist-max-o ensureRunBreak(IZ)I
    .registers 10
    .param p1, "offset"    # I
    .param p2, "copyAttrs"    # Z

    .line 451
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 452
    iget v0, p0, Ljava/text/AttributedString;->runCount:I

    return v0

    .line 456
    :cond_9
    const/4 v0, 0x0

    .line 457
    .local v0, "runIndex":I
    :goto_a
    iget v1, p0, Ljava/text/AttributedString;->runCount:I

    if-ge v0, v1, :cond_17

    iget-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v2, v0

    if-ge v2, p1, :cond_17

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 462
    :cond_17
    if-ge v0, v1, :cond_20

    iget-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_20

    .line 463
    return v0

    .line 468
    :cond_20
    iget v2, p0, Ljava/text/AttributedString;->runArraySize:I

    if-ne v1, v2, :cond_4e

    .line 469
    add-int/lit8 v2, v2, 0xa

    .line 470
    .local v2, "newArraySize":I
    new-array v1, v2, [I

    .line 473
    .local v1, "newRunStarts":[I
    new-array v3, v2, [Ljava/util/Vector;

    .line 476
    .local v3, "newRunAttributes":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-array v4, v2, [Ljava/util/Vector;

    .line 478
    .local v4, "newRunAttributeValues":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2d
    iget v6, p0, Ljava/text/AttributedString;->runArraySize:I

    if-ge v5, v6, :cond_46

    .line 479
    iget-object v6, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v6, v6, v5

    aput v6, v1, v5

    .line 480
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v5

    aput-object v6, v3, v5

    .line 481
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v6, v6, v5

    aput-object v6, v4, v5

    .line 478
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 483
    .end local v5    # "i":I
    :cond_46
    iput-object v1, p0, Ljava/text/AttributedString;->runStarts:[I

    .line 484
    iput-object v3, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    .line 485
    iput-object v4, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    .line 486
    iput v2, p0, Ljava/text/AttributedString;->runArraySize:I

    .line 491
    .end local v1    # "newRunStarts":[I
    .end local v2    # "newArraySize":I
    .end local v3    # "newRunAttributes":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v4    # "newRunAttributeValues":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/lang/Object;>;"
    :cond_4e
    const/4 v1, 0x0

    .line 492
    .local v1, "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    const/4 v2, 0x0

    .line 494
    .local v2, "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    if-eqz p2, :cond_6e

    .line 495
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    .line 496
    .local v3, "oldRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    .line 497
    .local v4, "oldRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    if-eqz v3, :cond_66

    .line 498
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5, v3}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    move-object v1, v5

    .line 500
    :cond_66
    if-eqz v4, :cond_6e

    .line 501
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5, v4}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    move-object v2, v5

    .line 506
    .end local v3    # "oldRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v4    # "oldRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    :cond_6e
    iget v3, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/text/AttributedString;->runCount:I

    .line 507
    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_76
    if-le v3, v0, :cond_93

    .line 508
    iget-object v4, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v5, v3, -0x1

    aget v5, v4, v5

    aput v5, v4, v3

    .line 509
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v4, v5

    aput-object v5, v4, v3

    .line 510
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v4, v5

    aput-object v5, v4, v3

    .line 507
    add-int/lit8 v3, v3, -0x1

    goto :goto_76

    .line 512
    .end local v3    # "i":I
    :cond_93
    iget-object v3, p0, Ljava/text/AttributedString;->runStarts:[I

    aput p1, v3, v0

    .line 513
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v1, v3, v0

    .line 514
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v2, v3, v0

    .line 516
    return v0
.end method

.method private declared-synchronized greylist-max-o getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .registers 8
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I

    monitor-enter p0

    .line 612
    :try_start_1
    iget-object v0, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v0, v0, p2

    .line 613
    .local v0, "currentRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget-object v1, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v1, v1, p2
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    .line 614
    .local v1, "currentRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 615
    monitor-exit p0

    return-object v2

    .line 617
    :cond_e
    :try_start_e
    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 618
    .local v3, "attributeIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1b

    .line 619
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1d

    monitor-exit p0

    return-object v2

    .line 622
    .end local p0    # "this":Ljava/text/AttributedString;
    :cond_1b
    monitor-exit p0

    return-object v2

    .line 611
    .end local v0    # "currentRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v1    # "currentRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v3    # "attributeIndex":I
    .end local p1    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local p2    # "runIndex":I
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private greylist-max-o getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .registers 12
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .line 628
    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v0

    .line 629
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/text/Annotation;

    if-eqz v1, :cond_60

    .line 631
    const/4 v1, 0x0

    if-lez p3, :cond_28

    .line 632
    move v2, p2

    .line 633
    .local v2, "currIndex":I
    iget-object v3, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v3, v3, v2

    .line 634
    .local v3, "runStart":I
    :goto_10
    if-lt v3, p3, :cond_25

    add-int/lit8 v4, v2, -0x1

    .line 635
    invoke-direct {p0, p1, v4}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 636
    add-int/lit8 v2, v2, -0x1

    .line 637
    iget-object v4, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v3, v4, v2

    goto :goto_10

    .line 639
    :cond_25
    if-ge v3, p3, :cond_28

    .line 641
    return-object v1

    .line 644
    .end local v2    # "currIndex":I
    .end local v3    # "runStart":I
    :cond_28
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v2

    .line 645
    .local v2, "textLength":I
    if-ge p4, v2, :cond_60

    .line 646
    move v3, p2

    .line 647
    .local v3, "currIndex":I
    iget v4, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3c

    iget-object v4, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v5, v3, 0x1

    aget v4, v4, v5

    goto :goto_3d

    :cond_3c
    move v4, v2

    .line 648
    .local v4, "runLimit":I
    :goto_3d
    if-gt v4, p4, :cond_5d

    add-int/lit8 v5, v3, 0x1

    .line 649
    invoke-direct {p0, p1, v5}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 650
    add-int/lit8 v3, v3, 0x1

    .line 651
    iget v5, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_5a

    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    goto :goto_5b

    :cond_5a
    move v5, v2

    :goto_5b
    move v4, v5

    goto :goto_3d

    .line 653
    :cond_5d
    if-le v4, p4, :cond_60

    .line 655
    return-object v1

    .line 661
    .end local v2    # "textLength":I
    .end local v3    # "currIndex":I
    .end local v4    # "runLimit":I
    :cond_60
    return-object v0
.end method

.method private static greylist-max-o mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 733
    .local p0, "last":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x1

    if-nez p0, :cond_e

    .line 734
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 736
    :cond_e
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o setAttributes(Ljava/util/Map;I)V
    .registers 10
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 706
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    iget v0, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v0, :cond_7

    .line 707
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 710
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    move-result v0

    .line 713
    .local v0, "index":I
    if-eqz p1, :cond_4c

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    move v2, v1

    .local v2, "size":I
    if-lez v1, :cond_4c

    .line 714
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 715
    .local v1, "runAttrs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v2}, Ljava/util/Vector;-><init>(I)V

    .line 716
    .local v3, "runValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 718
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;>;"
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 719
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 721
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 723
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    goto :goto_27

    .line 724
    :cond_44
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v1, v5, v0

    .line 725
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v3, v5, v0

    .line 727
    .end local v1    # "runAttrs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v2    # "size":I
    .end local v3    # "runValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;>;"
    :cond_4c
    return-void
.end method

.method private static final greylist-max-o valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "value1"    # Ljava/lang/Object;
    .param p1, "value2"    # Ljava/lang/Object;

    .line 678
    if-nez p0, :cond_8

    .line 679
    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 681
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .registers 6
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;

    .line 319
    if-eqz p1, :cond_15

    .line 323
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    .line 324
    .local v0, "len":I
    if-eqz v0, :cond_d

    .line 328
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 329
    return-void

    .line 325
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t add attribute to 0-length text"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    .end local v0    # "len":I
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .registers 7
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .line 345
    if-eqz p1, :cond_18

    .line 349
    if-ltz p3, :cond_10

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-gt p4, v0, :cond_10

    if-ge p3, p4, :cond_10

    .line 353
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 354
    return-void

    .line 350
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid substring range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addAttributes(Ljava/util/Map;II)V
    .registers 10
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;II)V"
        }
    .end annotation

    .line 372
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    if-eqz p1, :cond_58

    .line 376
    if-ltz p2, :cond_50

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-gt p3, v0, :cond_50

    if-gt p2, p3, :cond_50

    .line 379
    if-ne p2, p3, :cond_1d

    .line 380
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 381
    return-void

    .line 382
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t add attribute to 0-length text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_1d
    iget v0, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v0, :cond_24

    .line 387
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 391
    :cond_24
    invoke-direct {p0, p2}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v0

    .line 392
    .local v0, "beginRunIndex":I
    invoke-direct {p0, p3}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v1

    .line 394
    .local v1, "endRunIndex":I
    nop

    .line 395
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 396
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;>;"
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 397
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 398
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0, v1}, Ljava/text/AttributedString;->addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 399
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    goto :goto_35

    .line 400
    :cond_4f
    return-void

    .line 377
    .end local v0    # "beginRunIndex":I
    .end local v1    # "endRunIndex":I
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;>;"
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid substring range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_58
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getIterator()Ljava/text/AttributedCharacterIterator;
    .registers 4

    .line 560
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIterator([Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/AttributedCharacterIterator;
    .registers 4
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    .line 575
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .registers 5
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .line 595
    new-instance v0, Ljava/text/AttributedString$AttributedStringIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/text/AttributedString$AttributedStringIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    return-object v0
.end method

.method greylist-max-o length()I
    .registers 2

    .line 604
    iget-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
