.class public interface abstract Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
.super Ljava/lang/Object;
.source "X500NameStyle.java"


# virtual methods
.method public abstract blacklist areEqual(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Z
.end method

.method public abstract blacklist attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.end method

.method public abstract blacklist calculateHashCode(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)I
.end method

.method public abstract blacklist fromString(Ljava/lang/String;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
.end method

.method public abstract blacklist oidToAttrNames(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/lang/String;
.end method

.method public abstract blacklist oidToDisplayName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
.end method

.method public abstract blacklist stringToValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.end method

.method public abstract blacklist toString(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;
.end method
