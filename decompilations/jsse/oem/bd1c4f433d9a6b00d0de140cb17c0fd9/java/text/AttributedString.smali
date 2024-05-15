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
.field private static final ARRAY_SIZE_INCREMENT:I = 0xa


# instance fields
.field runArraySize:I

.field runAttributeValues:[Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field runAttributes:[Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Vector",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field runCount:I

.field runStarts:[I

.field text:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Ljava/text/AttributedString;Ljava/util/Set;II)Z
    .registers 5
    .param p0, "-this"    # Ljava/text/AttributedString;
    .param p1, "attributes"    # Ljava/util/Set;
    .param p2, "runIndex1"    # I
    .param p3, "runIndex2"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/text/AttributedString;->attributeValuesMatch(Ljava/util/Set;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "value1"    # Ljava/lang/Object;
    .param p1, "value2"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/text/AttributedString;I)C
    .registers 3
    .param p0, "-this"    # Ljava/text/AttributedString;
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0, p1}, Ljava/text/AttributedString;->charAt(I)C

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .registers 6
    .param p0, "-this"    # Ljava/text/AttributedString;
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .registers 4
    .param p0, "-this"    # Ljava/text/AttributedString;
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    if-nez p1, :cond_b

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 129
    :cond_b
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    const/4 v6, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    if-eqz p1, :cond_8

    if-nez p2, :cond_e

    .line 146
    :cond_8
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 148
    :cond_e
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_26

    .line 151
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 152
    return-void

    .line 153
    :cond_1d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Can\'t add attribute to 0-length text"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    :cond_26
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    .line 157
    .local v0, "attributeCount":I
    if-lez v0, :cond_66

    .line 158
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 159
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    .line 160
    .local v4, "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(I)V

    .line 161
    .local v3, "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v4, v5, v6

    .line 162
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v3, v5, v6

    .line 164
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 165
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;>;"
    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 167
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 168
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_49

    .line 171
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;>;"
    .end local v3    # "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v4    # "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_66
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .registers 5
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;

    .prologue
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

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II)V
    .registers 5
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V
    .registers 20
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    if-nez p1, :cond_b

    .line 236
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 240
    :cond_b
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v9

    .line 241
    .local v9, "textBeginIndex":I
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v11

    .line 242
    .local v11, "textEndIndex":I
    move/from16 v0, p2

    if-lt v0, v9, :cond_1b

    move/from16 v0, p3

    if-le v0, v11, :cond_24

    .line 243
    :cond_1b
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "Invalid substring range"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 242
    :cond_24
    move/from16 v0, p2

    move/from16 v1, p3

    if-gt v0, v1, :cond_1b

    .line 246
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 247
    .local v10, "textBuffer":Ljava/lang/StringBuffer;
    invoke-interface/range {p1 .. p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 248
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v3

    .local v3, "c":C
    :goto_36
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v13

    move/from16 v0, p3

    if-ge v13, v0, :cond_46

    .line 249
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v3

    goto :goto_36

    .line 250
    :cond_46
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 252
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_53

    .line 253
    return-void

    .line 256
    :cond_53
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 257
    .local v6, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    if-nez p4, :cond_68

    .line 258
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 264
    :goto_61
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7e

    .line 265
    return-void

    .line 260
    :cond_68
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_69
    move-object/from16 v0, p4

    array-length v13, v0

    if-ge v4, v13, :cond_76

    .line 261
    aget-object v13, p4, v4

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 262
    :cond_76
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    goto :goto_61

    .line 270
    .end local v4    # "i":I
    :cond_7e
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 271
    .local v5, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_82
    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_eb

    .line 272
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 273
    .local v2, "attributeKey":Ljava/text/AttributedCharacterIterator$Attribute;
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 274
    :goto_93
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v13

    move/from16 v0, p3

    if-ge v13, v0, :cond_82

    .line 275
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v8

    .line 276
    .local v8, "start":I
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v7

    .line 277
    .local v7, "limit":I
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v12

    .line 279
    .local v12, "value":Ljava/lang/Object;
    if-eqz v12, :cond_c2

    .line 280
    instance-of v13, v12, Ljava/text/Annotation;

    if-eqz v13, :cond_cd

    .line 281
    move/from16 v0, p2

    if-lt v8, v0, :cond_c8

    move/from16 v0, p3

    if-gt v7, v0, :cond_c8

    .line 282
    sub-int v13, v8, p2

    sub-int v14, v7, p2

    invoke-virtual {p0, v2, v12, v13, v14}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 304
    :cond_c2
    :goto_c2
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_93

    .line 284
    :cond_c8
    move/from16 v0, p3

    if-le v7, v0, :cond_c2

    goto :goto_82

    .line 290
    :cond_cd
    move/from16 v0, p3

    if-ge v8, v0, :cond_82

    .line 292
    move/from16 v0, p2

    if-le v7, v0, :cond_c2

    .line 294
    move/from16 v0, p2

    if-ge v8, v0, :cond_db

    .line 295
    move/from16 v8, p2

    .line 296
    :cond_db
    move/from16 v0, p3

    if-le v7, v0, :cond_e1

    .line 297
    move/from16 v7, p3

    .line 298
    :cond_e1
    if-eq v8, v7, :cond_c2

    .line 299
    sub-int v13, v8, p2

    sub-int v14, v7, p2

    invoke-virtual {p0, v2, v12, v13, v14}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_c2

    .line 307
    .end local v2    # "attributeKey":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v7    # "limit":I
    .end local v8    # "start":I
    .end local v12    # "value":Ljava/lang/Object;
    :cond_eb
    return-void
.end method

.method constructor <init>([Ljava/text/AttributedCharacterIterator;)V
    .registers 13
    .param p1, "iterators"    # [Ljava/text/AttributedCharacterIterator;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-nez p1, :cond_e

    .line 77
    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "Iterators must not be null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 79
    :cond_e
    array-length v9, p1

    if-nez v9, :cond_17

    .line 80
    const-string/jumbo v9, ""

    iput-object v9, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 118
    :cond_16
    return-void

    .line 84
    :cond_17
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "counter":I
    :goto_1d
    array-length v9, p1

    if-ge v2, v9, :cond_28

    .line 86
    aget-object v9, p1, v2

    invoke-direct {p0, v1, v9}, Ljava/text/AttributedString;->appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 89
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 91
    iget-object v9, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_16

    .line 94
    const/4 v7, 0x0

    .line 95
    .local v7, "offset":I
    const/4 v6, 0x0

    .line 97
    .local v6, "last":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .end local v6    # "last":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    :goto_39
    array-length v9, p1

    if-ge v2, v9, :cond_16

    .line 98
    aget-object v5, p1, v2

    .line 99
    .local v5, "iterator":Ljava/text/AttributedCharacterIterator;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v8

    .line 100
    .local v8, "start":I
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v3

    .line 101
    .local v3, "end":I
    move v4, v8

    .line 103
    .local v4, "index":I
    :goto_47
    if-ge v4, v3, :cond_62

    .line 104
    invoke-interface {v5, v4}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 106
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 108
    .local v0, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    invoke-static {v6, v0}, Ljava/text/AttributedString;->mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 109
    sub-int v9, v4, v8

    add-int/2addr v9, v7

    invoke-direct {p0, v0, v9}, Ljava/text/AttributedString;->setAttributes(Ljava/util/Map;I)V

    .line 111
    :cond_5c
    move-object v6, v0

    .line 112
    .local v6, "last":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v4

    goto :goto_47

    .line 114
    .end local v0    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    .end local v6    # "last":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    :cond_62
    sub-int v9, v3, v8

    add-int/2addr v7, v9

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_39
.end method

.method private declared-synchronized addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .registers 8
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .prologue
    monitor-enter p0

    .line 406
    :try_start_1
    iget v2, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v2, :cond_8

    .line 407
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 411
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

    monitor-exit p0

    .line 415
    return-void

    .end local v0    # "beginRunIndex":I
    .end local v1    # "endRunIndex":I
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .registers 12
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginRunIndex"    # I
    .param p4, "endRunIndex"    # I

    .prologue
    .line 523
    move v1, p3

    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_59

    .line 524
    const/4 v2, -0x1

    .line 525
    .local v2, "keyValueIndex":I
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    if-nez v6, :cond_38

    .line 526
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 527
    .local v4, "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 528
    .local v3, "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v4, v6, v1

    .line 529
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v3, v6, v1

    .line 535
    .end local v3    # "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v4    # "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :goto_1c
    const/4 v6, -0x1

    if-ne v2, v6, :cond_51

    .line 537
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 538
    .local v5, "oldSize":I
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 540
    :try_start_2e
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_41

    .line 523
    .end local v5    # "oldSize":I
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 532
    :cond_38
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_1c

    .line 542
    .restart local v5    # "oldSize":I
    :catch_41
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Ljava/util/Vector;->setSize(I)V

    .line 544
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Ljava/util/Vector;->setSize(I)V

    goto :goto_35

    .line 548
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "oldSize":I
    :cond_51
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, v2, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 551
    .end local v2    # "keyValueIndex":I
    :cond_59
    return-void
.end method

.method private final appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .registers 7
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "iterator"    # Ljava/text/CharacterIterator;

    .prologue
    .line 691
    invoke-interface {p2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    .line 692
    .local v1, "index":I
    invoke-interface {p2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    .local v0, "end":I
    move v2, v1

    .line 694
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_9
    if-ge v2, v0, :cond_19

    .line 695
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-interface {p2, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 696
    invoke-interface {p2}, Ljava/text/CharacterIterator;->current()C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_9

    .line 698
    :cond_19
    return-void
.end method

.method private attributeValuesMatch(Ljava/util/Set;II)Z
    .registers 8
    .param p2, "runIndex1"    # I
    .param p3, "runIndex2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 666
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 667
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

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

    if-nez v2, :cond_4

    .line 670
    const/4 v2, 0x0

    return v2

    .line 673
    .end local v1    # "key":Ljava/text/AttributedCharacterIterator$Attribute;
    :cond_20
    const/4 v2, 0x1

    return v2
.end method

.method private charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 608
    iget-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private final createRunAttributeDataVectors()V
    .registers 5

    .prologue
    const/16 v3, 0xa

    .line 419
    new-array v2, v3, [I

    .line 422
    .local v2, "newRunStarts":[I
    new-array v1, v3, [Ljava/util/Vector;

    .line 425
    .local v1, "newRunAttributes":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-array v0, v3, [Ljava/util/Vector;

    .line 427
    .local v0, "newRunAttributeValues":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/lang/Object;>;"
    iput-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    .line 428
    iput-object v1, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    .line 429
    iput-object v0, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    .line 430
    iput v3, p0, Ljava/text/AttributedString;->runArraySize:I

    .line 431
    const/4 v3, 0x1

    iput v3, p0, Ljava/text/AttributedString;->runCount:I

    .line 432
    return-void
.end method

.method private final ensureRunBreak(I)I
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 436
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    move-result v0

    return v0
.end method

.method private final ensureRunBreak(IZ)I
    .registers 16
    .param p1, "offset"    # I
    .param p2, "copyAttrs"    # Z

    .prologue
    .line 451
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v10

    if-ne p1, v10, :cond_9

    .line 452
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    return v10

    .line 456
    :cond_9
    const/4 v9, 0x0

    .line 457
    .local v9, "runIndex":I
    :goto_a
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    if-ge v9, v10, :cond_17

    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v10, v10, v9

    if-ge v10, p1, :cond_17

    .line 458
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 462
    :cond_17
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    if-ge v9, v10, :cond_22

    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v10, v10, v9

    if-ne v10, p1, :cond_22

    .line 463
    return v9

    .line 468
    :cond_22
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    iget v11, p0, Ljava/text/AttributedString;->runArraySize:I

    if-ne v10, v11, :cond_54

    .line 469
    iget v10, p0, Ljava/text/AttributedString;->runArraySize:I

    add-int/lit8 v1, v10, 0xa

    .line 470
    .local v1, "newArraySize":I
    new-array v6, v1, [I

    .line 473
    .local v6, "newRunStarts":[I
    new-array v5, v1, [Ljava/util/Vector;

    .line 476
    .local v5, "newRunAttributes":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-array v3, v1, [Ljava/util/Vector;

    .line 478
    .local v3, "newRunAttributeValues":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    iget v10, p0, Ljava/text/AttributedString;->runArraySize:I

    if-ge v0, v10, :cond_4c

    .line 479
    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v10, v10, v0

    aput v10, v6, v0

    .line 480
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v10, v10, v0

    aput-object v10, v5, v0

    .line 481
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v10, v10, v0

    aput-object v10, v3, v0

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 483
    :cond_4c
    iput-object v6, p0, Ljava/text/AttributedString;->runStarts:[I

    .line 484
    iput-object v5, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    .line 485
    iput-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    .line 486
    iput v1, p0, Ljava/text/AttributedString;->runArraySize:I

    .line 491
    .end local v0    # "i":I
    .end local v1    # "newArraySize":I
    .end local v3    # "newRunAttributeValues":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v5    # "newRunAttributes":[Ljava/util/Vector;, "[Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v6    # "newRunStarts":[I
    :cond_54
    const/4 v4, 0x0

    .line 492
    .local v4, "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    const/4 v2, 0x0

    .line 494
    .local v2, "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    if-eqz p2, :cond_72

    .line 495
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    add-int/lit8 v11, v9, -0x1

    aget-object v8, v10, v11

    .line 496
    .local v8, "oldRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    add-int/lit8 v11, v9, -0x1

    aget-object v7, v10, v11

    .line 497
    .local v7, "oldRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    if-eqz v8, :cond_6b

    .line 498
    new-instance v4, Ljava/util/Vector;

    .end local v4    # "newRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    invoke-direct {v4, v8}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 500
    :cond_6b
    if-eqz v7, :cond_72

    .line 501
    new-instance v2, Ljava/util/Vector;

    .end local v2    # "newRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    invoke-direct {v2, v7}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 506
    .end local v7    # "oldRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v8    # "oldRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_72
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Ljava/text/AttributedString;->runCount:I

    .line 507
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v0, v10, -0x1

    .restart local v0    # "i":I
    :goto_7c
    if-le v0, v9, :cond_9f

    .line 508
    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    iget-object v11, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v12, v0, -0x1

    aget v11, v11, v12

    aput v11, v10, v0

    .line 509
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget-object v11, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    add-int/lit8 v12, v0, -0x1

    aget-object v11, v11, v12

    aput-object v11, v10, v0

    .line 510
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    iget-object v11, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    add-int/lit8 v12, v0, -0x1

    aget-object v11, v11, v12

    aput-object v11, v10, v0

    .line 507
    add-int/lit8 v0, v0, -0x1

    goto :goto_7c

    .line 512
    :cond_9f
    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    aput p1, v10, v9

    .line 513
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v4, v10, v9

    .line 514
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v2, v10, v9

    .line 516
    return v9
.end method

.method private declared-synchronized getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .registers 8
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 612
    :try_start_2
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v2, v3, p2

    .line 613
    .local v2, "currentRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v1, v3, p2
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_1d

    .line 614
    .local v1, "currentRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    if-nez v2, :cond_e

    monitor-exit p0

    .line 615
    return-object v4

    .line 617
    :cond_e
    :try_start_e
    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 618
    .local v0, "attributeIndex":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1b

    .line 619
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1d

    move-result-object v3

    monitor-exit p0

    return-object v3

    :cond_1b
    monitor-exit p0

    .line 622
    return-object v4

    .end local v0    # "attributeIndex":I
    .end local v1    # "currentRunAttributeValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v2    # "currentRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :catchall_1d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .registers 13
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .prologue
    const/4 v7, 0x0

    .line 628
    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v4

    .line 629
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/text/Annotation;

    if-eqz v5, :cond_5f

    .line 631
    if-lez p3, :cond_28

    .line 632
    move v0, p2

    .line 633
    .local v0, "currIndex":I
    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v5, p2

    .line 634
    .local v2, "runStart":I
    :goto_10
    if-lt v2, p3, :cond_25

    .line 635
    add-int/lit8 v5, v0, -0x1

    invoke-direct {p0, p1, v5}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 634
    if-eqz v5, :cond_25

    .line 636
    add-int/lit8 v0, v0, -0x1

    .line 637
    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v5, v0

    goto :goto_10

    .line 639
    :cond_25
    if-ge v2, p3, :cond_28

    .line 641
    return-object v7

    .line 644
    .end local v0    # "currIndex":I
    .end local v2    # "runStart":I
    :cond_28
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v3

    .line 645
    .local v3, "textLength":I
    if-ge p4, v3, :cond_5f

    .line 646
    move v0, p2

    .line 647
    .restart local v0    # "currIndex":I
    iget v5, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge p2, v5, :cond_58

    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v6, p2, 0x1

    aget v1, v5, v6

    .line 648
    .local v1, "runLimit":I
    :goto_3b
    if-gt v1, p4, :cond_5c

    .line 649
    add-int/lit8 v5, v0, 0x1

    invoke-direct {p0, p1, v5}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 648
    if-eqz v5, :cond_5c

    .line 650
    add-int/lit8 v0, v0, 0x1

    .line 651
    iget v5, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_5a

    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v6, v0, 0x1

    aget v1, v5, v6

    goto :goto_3b

    .line 647
    .end local v1    # "runLimit":I
    :cond_58
    move v1, v3

    .restart local v1    # "runLimit":I
    goto :goto_3b

    .line 651
    :cond_5a
    move v1, v3

    goto :goto_3b

    .line 653
    :cond_5c
    if-le v1, p4, :cond_5f

    .line 655
    return-object v7

    .line 661
    .end local v0    # "currIndex":I
    .end local v1    # "runLimit":I
    .end local v3    # "textLength":I
    :cond_5f
    return-object v4
.end method

.method private static mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "last":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x0

    .line 733
    if-nez p0, :cond_d

    .line 734
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    .line 736
    :cond_d
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private setAttributes(Ljava/util/Map;I)V
    .registers 11
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 706
    iget v6, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v6, :cond_8

    .line 707
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 710
    :cond_8
    invoke-direct {p0, p2, v7}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    move-result v1

    .line 713
    .local v1, "index":I
    if-eqz p1, :cond_4b

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    .local v5, "size":I
    if-lez v5, :cond_4b

    .line 714
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v5}, Ljava/util/Vector;-><init>(I)V

    .line 715
    .local v3, "runAttrs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    .line 716
    .local v4, "runValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 718
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;>;"
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 719
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 721
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 724
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    :cond_43
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v3, v6, v1

    .line 725
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v4, v6, v1

    .line 727
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;>;"
    .end local v3    # "runAttrs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v4    # "runValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v5    # "size":I
    :cond_4b
    return-void
.end method

.method private static final valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "value1"    # Ljava/lang/Object;
    .param p1, "value2"    # Ljava/lang/Object;

    .prologue
    .line 678
    if-nez p0, :cond_8

    .line 679
    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 681
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .registers 6
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 319
    if-nez p1, :cond_9

    .line 320
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 323
    :cond_9
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    .line 324
    .local v0, "len":I
    if-nez v0, :cond_18

    .line 325
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Can\'t add attribute to 0-length text"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :cond_18
    invoke-direct {p0, p1, p2, v1, v0}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 329
    return-void
.end method

.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .registers 7
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .prologue
    .line 345
    if-nez p1, :cond_8

    .line 346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 349
    :cond_8
    if-ltz p3, :cond_10

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-le p4, v0, :cond_19

    .line 350
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid substring range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_19
    if-ge p3, p4, :cond_10

    .line 353
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 354
    return-void
.end method

.method public addAttributes(Ljava/util/Map;II)V
    .registers 10
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;II)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    if-nez p1, :cond_8

    .line 373
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 376
    :cond_8
    if-ltz p2, :cond_10

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v4

    if-le p3, v4, :cond_19

    .line 377
    :cond_10
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid substring range"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 376
    :cond_19
    if-gt p2, p3, :cond_10

    .line 379
    if-ne p2, p3, :cond_2d

    .line 380
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 381
    return-void

    .line 382
    :cond_24
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Can\'t add attribute to 0-length text"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 386
    :cond_2d
    iget v4, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v4, :cond_34

    .line 387
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 391
    :cond_34
    invoke-direct {p0, p2}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v0

    .line 392
    .local v0, "beginRunIndex":I
    invoke-direct {p0, p3}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v1

    .line 395
    .local v1, "endRunIndex":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 396
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;>;"
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 397
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 398
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0, v1}, Ljava/text/AttributedString;->addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_44

    .line 400
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    :cond_5e
    return-void
.end method

.method public getIterator()Ljava/text/AttributedCharacterIterator;
    .registers 4

    .prologue
    .line 560
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/AttributedCharacterIterator;
    .registers 4
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 575
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .registers 5
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 595
    new-instance v0, Ljava/text/AttributedString$AttributedStringIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/text/AttributedString$AttributedStringIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    return-object v0
.end method

.method length()I
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
