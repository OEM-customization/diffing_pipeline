.class Ljava/text/PatternEntry;
.super Ljava/lang/Object;
.source "PatternEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/PatternEntry$Parser;
    }
.end annotation


# static fields
.field static final blacklist RESET:I = -0x2

.field static final blacklist UNSET:I = -0x1


# instance fields
.field blacklist chars:Ljava/lang/String;

.field blacklist extension:Ljava/lang/String;

.field blacklist strength:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .registers 6
    .param p1, "strength"    # I
    .param p2, "chars"    # Ljava/lang/StringBuffer;
    .param p3, "extension"    # Ljava/lang/StringBuffer;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/PatternEntry;->strength:I

    .line 304
    const-string v0, ""

    iput-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    .line 305
    iput-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    .line 192
    iput p1, p0, Ljava/text/PatternEntry;->strength:I

    .line 193
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    .line 194
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1f

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 195
    :cond_1f
    nop

    :goto_20
    iput-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    .line 196
    return-void
.end method

.method static blacklist appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 6
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "toAddTo"    # Ljava/lang/StringBuffer;

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "inQuote":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 153
    .local v1, "ch":C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    const/16 v3, 0x27

    if-eqz v2, :cond_13

    .line 154
    const/4 v0, 0x1

    .line 155
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_49

    .line 157
    :cond_13
    invoke-static {v1}, Ljava/text/PatternEntry;->isSpecialChar(C)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 158
    const/4 v0, 0x1

    .line 159
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_49

    .line 161
    :cond_1e
    const/16 v2, 0x9

    if-eq v1, v2, :cond_44

    const/16 v2, 0xa

    if-eq v1, v2, :cond_44

    const/16 v2, 0xc

    if-eq v1, v2, :cond_44

    const/16 v2, 0xd

    if-eq v1, v2, :cond_44

    const/16 v2, 0x10

    if-eq v1, v2, :cond_44

    if-eq v1, v3, :cond_3f

    const/16 v2, 0x40

    if-eq v1, v2, :cond_44

    .line 172
    if-eqz v0, :cond_49

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_49

    .line 168
    :cond_3f
    const/4 v0, 0x1

    .line 169
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    goto :goto_49

    .line 164
    :cond_44
    const/4 v0, 0x1

    .line 165
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    nop

    .line 179
    :cond_49
    :goto_49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    if-eqz v0, :cond_51

    .line 181
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    :cond_51
    return-void
.end method

.method static blacklist isSpecialChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 292
    const/16 v0, 0x20

    if-eq p0, v0, :cond_27

    const/16 v0, 0x2f

    if-gt p0, v0, :cond_c

    const/16 v0, 0x22

    if-ge p0, v0, :cond_27

    :cond_c
    const/16 v0, 0x3f

    if-gt p0, v0, :cond_14

    const/16 v0, 0x3a

    if-ge p0, v0, :cond_27

    :cond_14
    const/16 v0, 0x60

    if-gt p0, v0, :cond_1c

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_27

    :cond_1c
    const/16 v0, 0x7e

    if-gt p0, v0, :cond_25

    const/16 v0, 0x7b

    if-lt p0, v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method


# virtual methods
.method blacklist addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V
    .registers 9
    .param p1, "toAddTo"    # Ljava/lang/StringBuffer;
    .param p2, "showExtension"    # Z
    .param p3, "showWhiteSpace"    # Z
    .param p4, "lastEntry"    # Ljava/text/PatternEntry;

    .line 119
    const/16 v0, 0x20

    if-eqz p3, :cond_1a

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 120
    iget v1, p0, Ljava/text/PatternEntry;->strength:I

    if-eqz v1, :cond_15

    if-eqz p4, :cond_11

    goto :goto_15

    .line 123
    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 121
    :cond_15
    :goto_15
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    :cond_1a
    :goto_1a
    const/16 v1, 0x26

    if-eqz p4, :cond_31

    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    if-eqz p3, :cond_26

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    :cond_26
    invoke-virtual {p4, p1}, Ljava/text/PatternEntry;->appendQuotedChars(Ljava/lang/StringBuffer;)V

    .line 129
    invoke-virtual {p0, p1}, Ljava/text/PatternEntry;->appendQuotedExtension(Ljava/lang/StringBuffer;)V

    .line 130
    if-eqz p3, :cond_31

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    :cond_31
    iget v2, p0, Ljava/text/PatternEntry;->strength:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_63

    const/4 v1, -0x1

    if-eq v2, v1, :cond_5d

    if-eqz v2, :cond_57

    const/4 v1, 0x1

    if-eq v2, v1, :cond_51

    const/4 v1, 0x2

    if-eq v2, v1, :cond_4b

    const/4 v1, 0x3

    if-eq v2, v1, :cond_45

    goto :goto_66

    .line 134
    :cond_45
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    .line 135
    :cond_4b
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    .line 136
    :cond_51
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    .line 137
    :cond_57
    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    .line 139
    :cond_5d
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    .line 138
    :cond_63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    :goto_66
    if-eqz p3, :cond_6b

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    :cond_6b
    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 144
    if-eqz p2, :cond_84

    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_84

    .line 145
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 148
    :cond_84
    return-void
.end method

.method public blacklist appendQuotedChars(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1, "toAddTo"    # Ljava/lang/StringBuffer;

    .line 63
    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 64
    return-void
.end method

.method public blacklist appendQuotedExtension(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1, "toAddTo"    # Ljava/lang/StringBuffer;

    .line 56
    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 57
    return-void
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 72
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 73
    :cond_4
    move-object v0, p1

    check-cast v0, Ljava/text/PatternEntry;

    .line 74
    .local v0, "other":Ljava/text/PatternEntry;
    iget-object v1, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v2, v0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 75
    .local v1, "result":Z
    return v1
.end method

.method final blacklist getChars()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    return-object v0
.end method

.method final blacklist getExtension()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    return-object v0
.end method

.method final blacklist getStrength()I
    .registers 2

    .line 95
    iget v0, p0, Ljava/text/PatternEntry;->strength:I

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 79
    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
