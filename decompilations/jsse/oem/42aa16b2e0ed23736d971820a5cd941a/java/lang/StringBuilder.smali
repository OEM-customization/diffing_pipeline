.class public final Ljava/lang/StringBuilder;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuilder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/CharSequence;


# static fields
.field static final whitelist serialVersionUID:J = 0x3cd5fb145a4c6acbL


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 90
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 91
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 103
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 128
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 440
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 441
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ljava/lang/StringBuilder;->count:I

    .line 442
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/lang/StringBuilder;->value:[C

    .line 443
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 430
    iget v0, p0, Ljava/lang/StringBuilder;->count:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 431
    iget-object v0, p0, Ljava/lang/StringBuilder;->value:[C

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 432
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist append(C)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic blacklist append(D)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic blacklist append(F)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic blacklist append(I)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic blacklist append(J)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic blacklist append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic blacklist append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic blacklist append(Ljava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic blacklist append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic blacklist append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic blacklist append(Z)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic blacklist append([C)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic blacklist append([CII)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic whitelist core-platform-api test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic whitelist core-platform-api test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic whitelist core-platform-api test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public whitelist core-platform-api test-api append(C)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "c"    # C

    .line 203
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    .line 204
    return-object p0
.end method

.method public whitelist core-platform-api test-api append(D)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "d"    # D

    .line 227
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(D)Ljava/lang/AbstractStringBuilder;

    .line 228
    return-object p0
.end method

.method public whitelist core-platform-api test-api append(F)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "f"    # F

    .line 221
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(F)Ljava/lang/AbstractStringBuilder;

    .line 222
    return-object p0
.end method

.method public whitelist core-platform-api test-api append(I)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "i"    # I

    .line 209
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(I)Ljava/lang/AbstractStringBuilder;

    .line 210
    return-object p0
.end method

.method public whitelist core-platform-api test-api append(J)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "lng"    # J

    .line 215
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(J)Ljava/lang/AbstractStringBuilder;

    .line 216
    return-object p0
.end method

.method public whitelist core-platform-api test-api append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 167
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;

    .line 168
    return-object p0
.end method

.method public whitelist core-platform-api test-api append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 176
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    .line 177
    return-object p0
.end method

.method public whitelist core-platform-api test-api append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 132
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public whitelist core-platform-api test-api append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .line 137
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 138
    return-object p0
.end method

.method public whitelist core-platform-api test-api append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 161
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;

    .line 162
    return-object p0
.end method

.method public whitelist core-platform-api test-api append(Z)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "b"    # Z

    .line 197
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Z)Ljava/lang/AbstractStringBuilder;

    .line 198
    return-object p0
.end method

.method public whitelist core-platform-api test-api append([C)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "str"    # [C

    .line 182
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append([C)Ljava/lang/AbstractStringBuilder;

    .line 183
    return-object p0
.end method

.method public whitelist core-platform-api test-api append([CII)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 191
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    .line 192
    return-object p0
.end method

.method public bridge synthetic blacklist appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api appendCodePoint(I)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "codePoint"    # I

    .line 236
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->appendCodePoint(I)Ljava/lang/AbstractStringBuilder;

    .line 237
    return-object p0
.end method

.method public bridge synthetic whitelist core-platform-api test-api capacity()I
    .registers 2

    .line 77
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->capacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api charAt(I)C
    .registers 2

    .line 77
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->charAt(I)C

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api codePointAt(I)I
    .registers 2

    .line 77
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api codePointBefore(I)I
    .registers 2

    .line 77
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api codePointCount(II)I
    .registers 3

    .line 77
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist delete(II)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api delete(II)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 245
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->delete(II)Ljava/lang/AbstractStringBuilder;

    .line 246
    return-object p0
.end method

.method public bridge synthetic blacklist deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api deleteCharAt(I)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "index"    # I

    .line 254
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->deleteCharAt(I)Ljava/lang/AbstractStringBuilder;

    .line 255
    return-object p0
.end method

.method public bridge synthetic whitelist core-platform-api test-api ensureCapacity(I)V
    .registers 2

    .line 77
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api getChars(II[CI)V
    .registers 5

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V

    return-void
.end method

.method public whitelist core-platform-api test-api indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 381
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api indexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 386
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist insert(IC)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ID)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->insert(ID)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(IF)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(IF)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(II)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(IJ)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 5

    .line 77
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(IZ)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(IZ)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(I[C)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(I[CII)Ljava/lang/AbstractStringBuilder;
    .registers 5

    .line 77
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api insert(IC)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "c"    # C

    .line 339
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IC)Ljava/lang/AbstractStringBuilder;

    .line 340
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(ID)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .line 375
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->insert(ID)Ljava/lang/AbstractStringBuilder;

    .line 376
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(IF)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .line 366
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IF)Ljava/lang/AbstractStringBuilder;

    .line 367
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(II)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .line 348
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(II)Ljava/lang/AbstractStringBuilder;

    .line 349
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(IJ)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .line 357
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->insert(IJ)Ljava/lang/AbstractStringBuilder;

    .line 358
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .line 310
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;

    .line 311
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 321
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    .line 322
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 283
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;

    .line 284
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 292
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 293
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(IZ)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .line 330
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IZ)Ljava/lang/AbstractStringBuilder;

    .line 331
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(I[C)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    .line 301
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(I[C)Ljava/lang/AbstractStringBuilder;

    .line 302
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(I[CII)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(I[CII)Ljava/lang/AbstractStringBuilder;

    .line 275
    return-object p0
.end method

.method public whitelist core-platform-api test-api lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 391
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 396
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api length()I
    .registers 2

    .line 77
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api offsetByCodePoints(II)I
    .registers 3

    .line 77
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    .line 263
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 264
    return-object p0
.end method

.method public bridge synthetic blacklist reverse()Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api reverse()Ljava/lang/StringBuilder;
    .registers 1

    .line 401
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->reverse()Ljava/lang/AbstractStringBuilder;

    .line 402
    return-object p0
.end method

.method public bridge synthetic whitelist core-platform-api test-api setCharAt(IC)V
    .registers 3

    .line 77
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->setCharAt(IC)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api setLength(I)V
    .registers 2

    .line 77
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 3

    .line 77
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api substring(I)Ljava/lang/String;
    .registers 2

    .line 77
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api substring(II)Ljava/lang/String;
    .registers 3

    .line 77
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 408
    iget v0, p0, Ljava/lang/StringBuilder;->count:I

    if-nez v0, :cond_7

    .line 409
    const-string v0, ""

    return-object v0

    .line 413
    :cond_7
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/StringBuilder;->value:[C

    const/4 v2, 0x0

    iget v3, p0, Ljava/lang/StringBuilder;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trimToSize()V
    .registers 1

    .line 77
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V

    return-void
.end method
