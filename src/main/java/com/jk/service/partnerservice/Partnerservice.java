package com.jk.service.partnerservice;

import com.jk.model.Partner;

import java.util.List;

public interface Partnerservice {

    List<Partner> selectpartner();

    void addpartner(Partner str);
}
