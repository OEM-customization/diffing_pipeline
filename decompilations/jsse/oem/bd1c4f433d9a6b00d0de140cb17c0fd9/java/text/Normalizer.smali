.class public final Ljava/text/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Normalizer$Form;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method public static isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z
    .registers 5
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "form"    # Ljava/text/Normalizer$Form;

    .prologue
    .line 184
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/text/Normalizer$Form;->-get0(Ljava/text/Normalizer$Form;)Landroid/icu/text/Normalizer$Mode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z

    move-result v0

    return v0
.end method

.method public static normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;
    .registers 4
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "form"    # Ljava/text/Normalizer$Form;

    .prologue
    .line 166
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/text/Normalizer$Form;->-get0(Ljava/text/Normalizer$Form;)Landroid/icu/text/Normalizer$Mode;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
