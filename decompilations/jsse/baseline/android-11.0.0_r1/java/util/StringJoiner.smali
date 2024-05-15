.class public final Ljava/util/StringJoiner;
.super Ljava/lang/Object;
.source "StringJoiner.java"


# instance fields
.field private final greylist-max-o delimiter:Ljava/lang/String;

.field private greylist-max-o emptyValue:Ljava/lang/String;

.field private final greylist-max-o prefix:Ljava/lang/String;

.field private final greylist-max-o suffix:Ljava/lang/String;

.field private greylist-max-o value:Ljava/lang/StringBuilder;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "delimiter"    # Ljava/lang/CharSequence;

    .line 100
    const-string v0, ""

    invoke-direct {p0, p1, v0, v0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "delimiter"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # Ljava/lang/CharSequence;
    .param p3, "suffix"    # Ljava/lang/CharSequence;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "The prefix must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    const-string v0, "The delimiter must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    const-string v0, "The suffix must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/StringJoiner;->prefix:Ljava/lang/String;

    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/StringJoiner;->delimiter:Ljava/lang/String;

    .line 127
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/StringJoiner;->emptyValue:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private greylist-max-o prepareBuilder()Ljava/lang/StringBuilder;
    .registers 3

    .line 222
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a

    .line 223
    iget-object v1, p0, Ljava/util/StringJoiner;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 225
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    .line 227
    :goto_16
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    .registers 3
    .param p1, "newElement"    # Ljava/lang/CharSequence;

    .line 185
    invoke-direct {p0}, Ljava/util/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 186
    return-object p0
.end method

.method public whitelist core-platform-api test-api length()I
    .registers 3

    .line 244
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_16

    .line 245
    :cond_10
    iget-object v0, p0, Ljava/util/StringJoiner;->emptyValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 244
    :goto_16
    return v0
.end method

.method public whitelist core-platform-api test-api merge(Ljava/util/StringJoiner;)Ljava/util/StringJoiner;
    .registers 6
    .param p1, "other"    # Ljava/util/StringJoiner;

    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p1, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1a

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 215
    .local v0, "length":I
    invoke-direct {p0}, Ljava/util/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p1, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object v3, p1, Ljava/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 218
    .end local v0    # "length":I
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1a
    return-object p0
.end method

.method public whitelist core-platform-api test-api setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    .registers 3
    .param p1, "emptyValue"    # Ljava/lang/CharSequence;

    .line 146
    const-string v0, "The empty value must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    .line 147
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/StringJoiner;->emptyValue:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 161
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-nez v0, :cond_7

    .line 162
    iget-object v0, p0, Ljava/util/StringJoiner;->emptyValue:Ljava/lang/String;

    return-object v0

    .line 164
    :cond_7
    iget-object v0, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 165
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_18
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 168
    .local v0, "initialLength":I
    iget-object v1, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 171
    return-object v1
.end method
