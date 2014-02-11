import random

tasks = ["Design", "Implementation", "Unit Test", "Integration","System Test", "Deployment", "Acceptance Test"]

class module:

    def __init__(self, nm, estimate):
        self.name = nm
        self.test = "I love this"
        self.progress = 0
        self.estimateEffort = estimate
        self.actualEffort = (((random.random()/2) - 0.25) * estimate) + estimate

        #print self.actualEffort

	def progress(self, val):
		self.progress += val

	def changeActual(self, change):
		self.actualEffort  += change

    def __repr__(self):
        ret =str(self.name) + ' is '+str(self.progress)+' of '+str(self.actualEffort)+' done'
        return ret

if __name__ == "__main__":
	module(50)
