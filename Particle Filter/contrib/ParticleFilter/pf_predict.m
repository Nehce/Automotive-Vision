function particles_pred = pf_predict(particles, delta_motion, noise_system)
% Predicts the particle set by the delta_motion measurement.

particles_pred = zeros(size(particles));

% ----------------------Exercise 5.1------------------------------
num_particles = size(particles, 1);
% keep the weights during prediction
particles_pred(:,1) = particles(:,1);
% update the delta motion with noise
particles_pred(:,2:3) = particles(:,2:3) + repmat(delta_motion, num_particles, 1)...
                        + mvnrnd([0 0], noise_system, num_particles);
    

% ----------------------------------------------------------------

end
