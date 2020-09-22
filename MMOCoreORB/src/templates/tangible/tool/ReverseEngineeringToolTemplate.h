/*
 *  ReverseEngineeringToolTemplate.h
 *
 *         Tarkin's Revenge
 *          February 2020
 */

#ifndef REVERSEENGINEERINGTOOLTEMPLATE_H_
#define REVERSEENGINEERINGTOOLTEMPLATE_H_

#include "templates/SharedTangibleObjectTemplate.h"

class ReverseEngineeringToolTemplate : public SharedTangibleObjectTemplate {

public:
	ReverseEngineeringToolTemplate() {
	}

	~ReverseEngineeringToolTemplate() {

	}

    void readObject(LuaObject* templateData) {
	SharedTangibleObjectTemplate::readObject(templateData);

    }

    bool isReverseEngineeringToolTemplate() {
    	return true;
    }

};

#endif /* REVERSEENGINEERINGTOOLTEMPLATE_H_ */
